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
    <p align="center"><font size="4" color="coral" face="楷体">员工基本信息</font></p>
    <form action="${ctx }/admin/employee/save1?id=${n.id}"  class="form-horizontal" method="post">
        <div class="form-group">
            <input type="hidden" id="user-id" name="user.id" value="${n.user.id }" class="form-control">

            <!-- 姓名 -->
            <label class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="name" value="${empty n.name ? "" : n.name }">
            </div>

            <!-- 岗位 -->
            <label class="col-sm-2 control-label">岗位</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="position" value="${empty n.position ? "": n.position}">
            </div>
        </div>
        <div class="form-group">

            <!-- 出生日期 -->
            <label class="col-sm-2 control-label">出生日期</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="birth"
                           value="<fmt:formatDate value='${empty n.birth ? "" : n.birth }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>

            <!-- 性别 -->
            <label class="col-sm-2 control-label">性别</label>
            <div class="col-sm-4">
                ${enum:detail('Sex', 'sex', n.sex) }
            </div>
        </div>
        <div class="form-group">

            <!-- 身高 -->
            <label class="col-sm-2 control-label">身高</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="height" value="${empty n.height ? "" : n.height }">
            </div>

            <!-- 体重 -->
            <label class="col-sm-2 control-label">体重</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="weight" value="${empty n.weight ? "": n.weight }">
            </div>
        </div>
        <div class="form-group">

            <!-- 籍贯 -->
            <label class="col-sm-2 control-label">籍贯</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="place" value="${empty n.place ? "": n.place }">
            </div>

            <!-- 民族 -->
            <label class="col-sm-2 control-label">民族</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="nation" value="${empty n.nation ? "": n.nation}">
            </div>
        </div>
        <div class="form-group">

            <!-- 身份证号 -->
            <label class="col-sm-2 control-label">身份证号</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="IDCard" value="${empty n.IDCard ? "": n.IDCard }">
            </div>

            <!-- 学历 -->
            <label class="col-sm-2 control-label">学历</label>
            <div class="col-sm-4">
                <label>
                    ${enum:detail('EmployeeEducationStatus', 'education', n.education)}
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 毕业学校 -->
            <label class="col-sm-2 control-label">毕业学校</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="school" value="${empty n.school ? "": n.school }">
            </div>

            <!-- 专业 -->
            <label class="col-sm-2 control-label">专业</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="major" value="${empty n.major? "": n.major }">
            </div>
        </div>
        <div class="form-group">

            <!-- 户口所在地 -->
            <label class="col-sm-2 control-label">户口所在地</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="location" value="${empty n.location? "": n.location }">
            </div>

            <!-- 居住地址 -->
            <label class="col-sm-2 control-label">居住地址</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="address" value="${empty n.address? "": n.address }">
            </div>
        </div>
        <div class="form-group">

            <!-- 联系电话 -->
            <label class="col-sm-2 control-label">联系电话</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="phone" value="${empty n.phone? "":n.phone }">
            </div>

            <!-- 邮箱 -->
            <label class="col-sm-2 control-label">邮箱</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="email" value="${empty n.email? "": n.email }">
            </div>
        </div>
        <div class="form-group">

            <!-- 微信号 -->
            <label class="col-sm-2 control-label">微信号</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="wechat" value="${empty n.wechat? "":n.wechat }">
            </div>

            <!-- 婚姻状况 -->
            <label class="col-sm-2 control-label">婚姻状况</label>
            <div class="col-sm-4">
                <label>
                    ${enum:detail('EmployeeMarryStatus', 'marry', n.marry)}
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 入职时间 -->
            <label class="col-sm-2 control-label">入职时间</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="inTime"
                           value="<fmt:formatDate value='${empty n.inTime? "": n.inTime }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>

            <!-- 员工信息 -->
            <label class="col-sm-2 control-label">员工状态<br/>/1.录用/2.停职</label>
            <div class="col-sm-4">
                <label>
                    ${enum:detail('EmployeeStatus', 'status', n.status)}
                </label>
            </div>
        </div>
        <button type="button" class="sub-btn" >员工信息修改</button>
    </form>
</div>

<!--紧急联系人信息-->
<div class="wrapper wrapper-content animated fadeInRight">
    <p align="center"><font size="4" color="coral" face="楷体">紧急联系人信息</font></p>
    <c:forEach items="${emgs}" var="emg" varStatus="idx">
        <form action="${ctx }/admin/emergencyContact/save" id="detail-form" class="form-horizontal" method="post">
            <input type="hidden" id="employee-id-1" name="employee.id" value="${emg.employee.id }" class="form-control">
            <input type="hidden" id="user-id-2" name="id" value="${emg.id }" class="form-control">
            <div class="form-group">
                <!-- 姓名 -->
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="name" value="${empty emg.name? "": emg.name }">
                </div>

                <!-- 关系 -->
                <label class="col-sm-2 control-label">关系</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="relation" value="${empty emg.relation? "":emg.relation }">
                </div>
            </div>

            <div class="form-group">
                <!-- 联系电话 -->
                <label class="col-sm-2 control-label">联系电话</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="phone" value="${empty emg.phone? "": emg.phone }">
                </div>

                <!-- 单位或住址 -->
                <label class="col-sm-2 control-label">单位或住址</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="address" value="${empty emg.address? "": emg.address }">
                </div>
            </div>
            <button type="button" class="sub-btn" >紧急联系人修改</button>
            <button type="button" class="btn btn-sm btn-outline btn-danger sub-btn-del" onclick="onDeleteEm(${emg.id })"> <i class="fa fa-remove"></i>删除</button>
        </form>
    </c:forEach>
</div>

<!--教育经历-->
<div class="wrapper wrapper-content animated fadeInRight">
    <p align="center"><font size="4" color="coral" face="楷体">教育经历</font></p>
    <c:forEach items="${edus }" var="edu" varStatus="idx">
        <form action="${ctx }/admin/education/save?id=${edu.id }" id="detail-form-2" class="form-horizontal" method="post">
            <input type="hidden" id="employee-id-2" name="employee.id" value="${edu.employee.id }" class="form-control">
            <input type="hidden" id="user-id-3" name="id" value="${edu.id }" class="form-control">
            <div class="form-group">
                <!-- 学习起始时间 -->
                <label class="col-sm-2 control-label">学习起始时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="start"
                               value="<fmt:formatDate value='${empty edu.start? "": edu.start }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>

                <!-- 学习结束时间 -->
                <label class="col-sm-2 control-label">学习结束时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="end"
                               value="<fmt:formatDate value='${empty edu.end? "": edu.end }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>
            </div>
            <div class="form-group">
                <!-- 专业 -->
                <label class="col-sm-2 control-label">专业</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="major" value="${empty edu.major? "": edu.major }">
                </div>

                <!-- 学历 -->
                <label class="col-sm-2 control-label">学历</label>
                <div class="col-sm-4">
                    <label>
                            ${enum:detail('EmployeeEducationStatus', 'record',edu.record) }
                    </label>
                </div>
            </div>
            <div class="form-group">
                <!-- 证书 -->
                <label class="col-sm-2 control-label">证书</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="certificate" value="${empty edu.certificate ?"":edu.certificate}">
                </div>
            </div>
            <button type="button" class="sub-btn" >教育经历修改</button>
            <button type="button" class="btn btn-sm btn-outline btn-danger sub-btn-del" onclick="onDeleteEd(${edu.id })"> <i class="fa fa-remove"></i>删除</button>
        </form>
    </c:forEach>
</div>

<!--工作经历-->
<div class="wrapper wrapper-content animated fadeInRight">
    <p align="center"><font size="4" color="coral" face="楷体">工作经历</font></p>
    <c:forEach items="${exps}" var="exp" varStatus="idx">
        <form action="${ctx }/admin/experience/save?id=${exp.id }" id="detail-form-3" class="form-horizontal" method="post">
            <input type="hidden" id="employee-id-3" name="employee.id" value="${exp.employee.id }" class="form-control">
            <input type="hidden" id="user-id-4" name="id" value="${exp.id }" class="form-control">
            <div class="form-group">
                <!-- 离职原因 -->
                <label class="col-sm-2 control-label">离职原因</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="reason" value="${empty exp.reason? "": exp.reason}">
                </div>


                <!-- 单位 -->
                <label class="col-sm-2 control-label">单位</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="company" value="${empty exp.company? "": exp.company}">
                </div>
            </div>
            <div class="form-group">
                <!-- 工作 -->
                <label class="col-sm-2 control-label">工作</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="work" value="${empty exp.work?"" :exp.work }">
                </div>

                <!-- 职位 -->
                <label class="col-sm-2 control-label">职位</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="position" value="${empty exp.position?"":exp.position }">
                </div>
            </div>
            <div class="form-group">
                <!-- 工作起始时间 -->
                <label class="col-sm-2 control-label">工作起始时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="start"
                               value="<fmt:formatDate value='${empty exp.start? "":exp.start}' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>

                <!-- 工作结束时间 -->
                <label class="col-sm-2 control-label">工作结束时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="end"
                               value="<fmt:formatDate value='${empty exp.end?"":exp.end }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>
            </div>
            <button type="button" class="sub-btn" >工作经历修改</button>
            <button type="button" class="btn btn-sm btn-outline btn-danger sub-btn-del" onclick="onDeleteEx(${exp.id })"> <i class="fa fa-remove"></i>删除</button>
        </form>
    </c:forEach>
</div>

<!--家庭成员管理-->
<div class="wrapper wrapper-content animated fadeInRight">
    <p align="center"><font size="4" color="coral" face="楷体">家庭成员信息</font></p>
    <c:forEach items="${fmys }" var="fmy" varStatus="idx">
        <form action="${ctx }/admin/family/save?id=${fmy.id }" id="detail-form-4" class="form-horizontal" method="post">
            <input type="hidden" id="employee-id-4" name="employee.id" value="${fmy.employee.id }" class="form-control">
            <input type="hidden" id="user-id-5" name="id" value="${fmy.id }" class="form-control">
            <div class="form-group">
                <!-- 姓名 -->
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="name" value="${empty fmy.name?"":fmy.name }">
                </div>

                <!-- 关系 -->
                <label class="col-sm-2 control-label">关系</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="relation" value="${empty fmy.relation?"":fmy.relation }">
                </div>
            </div>
            <div class="form-group">
                <!-- 联系方式 -->
                <label class="col-sm-2 control-label">联系方式</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="contact" value="${empty fmy.contact? "":fmy.contact}">
                </div>

                <!-- 年龄 -->
                <label class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="age" value="${empty fmy.age?"":fmy.age }">
                </div>
            </div>
            <div class="form-group">

                <!-- 工作单位 -->
                <label class="col-sm-2 control-label">工作单位</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="company" value="${empty fmy.company?"":fmy.company }">
                </div>


                <!-- 职位 -->
                <label class="col-sm-2 control-label">职位</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="position" value="${empty fmy.position?"":fmy.position }">
                </div>
            </div>
            <button type="button" class="sub-btn" >成员信息修改</button>
            <button type="button" class="btn btn-sm btn-outline btn-danger sub-btn-del" onclick="onDeletefa(${fmy.id })"> <i class="fa fa-remove"></i>删除</button>
        </form>
    </c:forEach>

</div>

<%@include file="/common/foot.jsp" %>

<script>
    $(document).on("click", ".sub-btn", function () {
        var form = $(this).parents("form");
        form.ajaxSubmit({
            success: function(data) {
                if (isSuccess(data)) {
                    // reload();
                    location.reload()
                } else {
                }
            }
        });
    });

    $(document).on("click", ".sub-btn-del", function () {
        var form = $(this).parents("form");
        form.ajaxSubmit({
            success: function(data) {
                if (isSuccess(data)) {
                    location.reload()
                } else {
                }
            }
        });
    });

    function onDeleteEm(id){
        location.href="${ctx}/admin/emergencyContact/delete?ids="+id;
    }

    function onDeleteEd(id){
        location.href="${ctx}/admin/education/delete?ids="+id;
    }

    function onDeleteEx(id){
        location.href="${ctx}/admin/experience/delete?ids="+id;
    }

    function onDeletefa(id){
        location.href="${ctx}/admin/family/delete?ids="+id;
    }
</script>
</body>
</html>