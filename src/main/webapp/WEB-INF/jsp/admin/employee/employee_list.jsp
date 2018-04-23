<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@include file="/common/head.jsp" %>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                    	<form role="form" class="form-inline" id="query-form" method="post" action="${ctx }/admin/employee/list" >
                    		<!-- 查询开始 -->
                            <div class="form-group" >
                                <label for="query-user-id" class="sr-only2">用户ID</label>
                                	<input type="hidden" id="query-user-id" name="user.id" value="${query.user.id }" class="form-control">
				                 	<input type="text" class="form-control" id="user-name" name="user.id" value="${query.user.id }" 
				                 		onclick="bring({
										                 	url:'${ctx}/admin/user/search',
										                 	name: 'id',
										                 	idInput: 'user-id',
										                 	nameInput: 'user-name'
										                 	})" />
                            </div>
                            <div class="form-group">
                                <label for="query-name" class="sr-only2">姓名</label>
                                	<input type="text" id="query-name" name="name" value="${query.name }" class="form-control input-sm">
                                
                            </div>
                            <div class="form-group">
                                <label for="query-phone" class="sr-only2">联系电话</label>
                                	<input type="text" id="query-phone" name="phone" value="${query.phone }" class="form-control input-sm">
                                
                            </div>
							<label for="query-status" class="sr-only2">员工状态</label>
                            <div class="form-group" id="query-status">
								${enum:detail('EmployeeStatus', 'status', query.status) }
                            </div>
                            <div class="form-group">
                            	<button class="btn btn-primary btn-sm" type="submit"><i class="fa fa-search"></i>&nbsp;查询</button>
                            </div>
                            <!-- 查询结束 -->
                        </form>
                    
						<div>
							<p>
		                        <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add()"><i class="fa fa-plus"></i> 新增</button>
		                        <button type="button" class="btn btn-sm btn-outline btn-info " onclick="edit()"><i class="fa fa-paste"></i> 详情</button>
		                        <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del()"> 删除</button>
		                        <button type="button" class="btn btn-sm btn-outline btn-info " onclick="reOpen()"><i class="fa fa-refresh"></i> 刷新</button>
		                    </p>
						</div>
						<table id="table" data-toggle="table" data-striped="true" data-click-to-select="true" data-mobile-responsive="true">
                                    <thead>
                                        <tr>
                                            <th data-field="_state" data-checkbox="true"></th>
                                            <th data-field="id" data-visible="false">ID</th>
                                            <th data-field="user">用户ID</th>
                                            <th data-field="position">岗位</th>
                                            <th data-field="name">姓名</th>
                                            <th data-field="sex">性别</th>
                                            <th data-field="place">籍贯</th>
                                            <th data-field="phone">联系电话</th>
                                            <th data-field="iDCard">身份证号</th>
                                            <th data-field="wechat">微信号</th>
                                            <th data-field="email">邮箱</th>
                                            <th data-field="inTime">入职时间</th>
                                            <th data-field="status">员工状态/1.录用/2.停职</th>
                                        </tr>
                                    </thead>
							<tbody>
								<c:forEach items="${list }" var="n" varStatus="idx">
								<tr data-index="${idx.index }" data-id="${n.id }">
									<td class="bs-checkbox"><input data-index="0" name="btSelectItem" type="checkbox"></td>
									<td style="">${n.id }</td>
									<td style="">${n.user.id}</td>
									<td style="">${n.position }</td>
									<td style="">${n.name }</td>
									<td style="">${enum:list('Sex', n.sex) }</td>
									<td style="">${n.nation }</td>
									<td style="">${n.phone }</td>
									<td style="">${n.IDCard }</td>
									<td style="">${n.wechat }</td>
									<td style="">${n.email }</td>
									<td style=""><fmt:formatDate value="${n.inTime }" pattern="yyyy-MM-dd"/></td>
									<td style="">${enum:list('EmployeeStatus', n.status) }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
                   
						<%@include file="/common/page.jsp" %>

					</div>
                </div>
            </div>
        </div>
    </div>

<%@include file="/common/foot.jsp" %>
<script>
function add() {
    k.layer.add("${ctx}/admin/employee/detail");
}

function edit() {
    var selections = $('#table').bootstrapTable('getAllSelections');
	if (selections.length > 1) {
		error(k.msg.selectOnlyOne);
		return;
	}else if (selections.length === 0){
	    error(k.msg.requireOne);
	}
	var id = selections[0].id;
	k.layer.edit("${ctx}/admin/employee/detail?id=" + id);
}

var page = "${page.page}";
function reload() {
	page_submit(page);
}

function del() {
    var select = $('#table').bootstrapTable('getAllSelections');
    if(select.length < 1){
        error("请选择删除项");
        return ;
	}
	layer.confirm("确认删除？", {icon: 3, title:'提示'}, function () {
        var ids = [];
        for(var i=0; i<select.length; i++)
            ids.push(select[i].id);
        $.ajax({
            url : "${ctx}/admin/employee/delete",
            data : {
                ids : ids.join(',')
            },
            success : function (data) {
                if(isSuccess(data)){
                    reload();
                }
            },
            error : function () {
                alert("delete failed!");
            }
        });
    });
}
paging('pagination', ${page.totalPages}, ${page.page});

</script>
</body>
</html>