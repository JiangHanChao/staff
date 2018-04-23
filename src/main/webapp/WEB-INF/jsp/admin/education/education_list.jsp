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
                    	<form role="form" class="form-inline" id="query-form" method="post" action="${ctx }/admin/education/list" >
                    		<!-- 查询开始 -->
                            <div class="form-group">
                                <label for="query-employee-id" class="sr-only2">员工ID</label>
                                	<input type="hidden" id="query-employee-id" name="employee.id" value="${query.employee.id }" class="form-control">
				                 	<input type="text" class="form-control" id="employee-name" name="employee.id" value="${query.employee.id }" 
				                 		onclick="bring({
										                 	url:'${ctx}/admin/employee/search',
										                 	name: 'id',
										                 	idInput: 'employee-id',
										                 	nameInput: 'employee-name'
										                 	})" />	
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
		                        <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del();">删除</button>
		                        <button type="button" class="btn btn-sm btn-outline btn-info " onclick="reOpen()"><i class="fa fa-refresh"></i> 刷新</button>
		                    </p>
						</div>
						<table id="table" data-toggle="table" data-striped="true" data-click-to-select="true" data-mobile-responsive="true">
                                    <thead>
                                        <tr>
                                            <th data-field="_state" data-checkbox="true"></th>
                                            <th data-field="id" data-visible="false">ID</th>
                                            <th data-field="employee">员工ID</th>
                                            <th data-field="start">学习起始时间</th>
                                            <th data-field="end">学习结束时间</th>
                                            <th data-field="major">专业</th>
                                            <th data-field="record">学历</th>
                                            <th data-field="certificate">证书</th>
                                        </tr>
                                    </thead>
							<tbody>
								<c:forEach items="${list }" var="n" varStatus="idx">
								<tr data-index="${idx.index }" data-id="${n.id }">
									<td class="bs-checkbox">
										<input data-index="0" name="btSelectItem" type="checkbox">
									</td>
									<td style="">${n.id }</td>
									<td style="">${n.employee.id}</td>
									<td style="">
										<fmt:formatDate value="${n.start }" pattern="yyyy-MM-dd"/>
									</td>
									<td style="">
										<fmt:formatDate value="${n.end }" pattern="yyyy-MM-dd"/>
									</td>
									<td style="">${n.major }</td>
									<td style="">${n.record }</td>
									<td style="">${n.certificate }</td>
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
    k.layer.add("${ctx}/admin/education/detail");
}

function edit() {
    var selections = $('#table').bootstrapTable('getAllSelections');
	if (selections.length !== 1) {
		error2(k.msg.requireOne);
		return;
	}
	var id = selections[0].id;
	k.layer.edit("${ctx}/admin/education/detail?id=" + id);
}
var page = "${page.page}";
function reload() {
	page_submit(page);
}
function del() {
	k.layer.del("${ctx}/admin/education/delete");	
}
paging('pagination', ${page.totalPages}, ${page.page});

</script>
</body>
</html>