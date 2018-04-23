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
    <form action="${ctx}/admin/employee/save?id=${n.id }" id="employee-detail-form" class="form-horizontal" method="post">
        <div align="center">
            <label>员工基本信息</label>
        </div>
        <div>
            <div class="form-group">
                <!-- 姓名 -->
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="name" value="${n.name }">
                    </label>
                </div>

                <!-- 出生日期 -->
                <label class="col-sm-2 control-label">出生日期</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="birth"
                               value="<fmt:formatDate value='${n.birth }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 性别 -->
                <label class="col-sm-2 control-label">性别</label>
                <div class="col-sm-4">
                    <label>
                        ${enum:detail('Sex', 'sex', n.sex) }
                    </label>
                </div>

                <!-- 岗位 -->
                <label class="col-sm-2 control-label">岗位</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="position" value="${n.position }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 身高 -->
                <label class="col-sm-2 control-label">身高</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="height" value="${n.height }">
                    </label>
                </div>

                <!-- 体重 -->
                <label class="col-sm-2 control-label">体重</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="weight" value="${n.weight }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 民族 -->
                <label class="col-sm-2 control-label">民族</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="nation" value="${n.nation }">
                    </label>
                </div>

                <!-- 籍贯 -->
                <label class="col-sm-2 control-label">籍贯</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="place" value="${n.place }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 身份证号 -->
                <label class="col-sm-2 control-label">身份证号</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="iDCard" value="${n.IDCard }">
                    </label>
                </div>

                <!-- 毕业学校 -->
                <label class="col-sm-2 control-label">毕业学校</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="school" value="${n.school }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 专业 -->
                <label class="col-sm-2 control-label">专业</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="major" value="${n.major }">
                    </label>
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

                <!-- 户口所在地 -->
                <label class="col-sm-2 control-label">户口所在地</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="location" value="${n.location }">
                    </label>
                </div>

                <!-- 居住地址 -->
                <label class="col-sm-2 control-label">居住地址</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="address" value="${n.address }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 联系电话 -->
                <label class="col-sm-2 control-label">联系电话</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="phone" value="${n.phone }">
                    </label>
                </div>

                <!-- 微信号 -->
                <label class="col-sm-2 control-label">微信号</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="wechat" value="${n.wechat }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 邮箱 -->
                <label class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="email" value="${n.email }">
                    </label>
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
                           value="<fmt:formatDate value='${n.inTime }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>

            <!-- 员工状态/1.录用/2.停职 -->
            <label class="col-sm-2 control-label">员工状态<br/>/1.录用/2.停职</label>
            <div class="col-sm-4">
                <label>
                    ${enum:detail('EmployeeStatus', 'status', n.status)}
                </label>
            </div>
        </div>
        </div>
    <!--
    </form>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <form action="$ {ctx }/admin/emergencyContact/save?id=$ {emg.id }" id="emergencyContact-detail-form" class="form-horizontal" method="post" -->
        <div align="center">
            <label>
                <br/>紧急联系人
            </label>
        </div>

        <div>
                <div class="form-group">

                    <!-- 姓名 -->
                    <label class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-4">
                        <label>
                            <input type="text" class="form-control" name="emgname" value="${emg.name }">
                        </label>
                    </div>

                    <!-- 关系 -->
                    <label class="col-sm-2 control-label">关系</label>
                    <div class="col-sm-4">
                        <label>
                            <input type="text" class="form-control" name="emgrelation" value="${emg.relation }">
                        </label>
                    </div>
                </div>
                <div class="form-group">

                    <!-- 联系电话 -->
                    <label class="col-sm-2 control-label">联系电话</label>
                    <div class="col-sm-4">
                        <label>
                            <input type="text" class="form-control" name="emgphone" value="${emg.phone }">
                        </label>
                    </div>

                    <!-- 单位或住址 -->
                    <label class="col-sm-2 control-label">单位或住址</label>
                    <div class="col-sm-4">
                        <label>
                            <input type="text" class="form-control" name="emgaddress" value="${emg.address }">
                        </label>
                    </div>
                </div>
                <div class="form-group">

                    <!-- 新增 or 删除 一行 -->
                    <label class="col-sm-2 control-label">
                        <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_emg(this)">
                            <i class="fa fa-plus"></i> 新增
                        </button>
                    </label>
                    <label class="col-sm-2 control-label">
                        <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                            <i class="fa fa-minus"></i> 删除
                        </button>
                    </label>
                </div>
            </div>
    <!--
    </form>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <form action="$ {ctx }/admin/education/save?id=$ {edu.id }" id="education-detail-form" class="form-horizontal" method="post" -->
        <div align="center">
            <label><br/>教育及培训情况</label>
        </div>

        <div>
            <div class="form-group">
                <!-- 学习起始时间 -->
                <label class="col-sm-2 control-label">学习起始时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="edustart"
                               value="<fmt:formatDate value='${edu.start }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>

                <!-- 学习结束时间 -->
                <label class="col-sm-2 control-label">学习结束时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="eduend"
                               value="<fmt:formatDate value='${edu.end }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 学历 -->
                <label class="col-sm-2 control-label">学历</label>
                <div class="col-sm-4">
                    <label>
                        ${enum:detail('EmployeeEducationStatus', 'edurecord', edu.record) }
                    </label>
                </div>

                <!-- 专业 -->
                <label class="col-sm-2 control-label">专业</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="edumajor" value="${edu.major }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 证书 -->
                <label class="col-sm-2 control-label">证书</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="certificate" value="${edu.certificate }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 新增 or 删除 一行 -->
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_edu(this)">
                        <i class="fa fa-plus"></i> 新增
                    </button>
                </label>
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                        <i class="fa fa-minus"></i> 删除
                    </button>
                </label>
            </div>
        </div>
    <!--
        </form>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <form action="$ {ctx }/admin/experience/save?id=$ {exp.id }" id="experience-detail-form" class="form-horizontal" method="post" -->
        <div align="center">
            <label><br/>工作经验</label>
        </div>

        <div>
            <div class="form-group">

                <!-- 单位 -->
                <label class="col-sm-2 control-label">单位</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expcompany" value="${exp.company }">
                    </label>
                </div>

                <!-- 工作 -->
                <label class="col-sm-2 control-label">工作</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expwork" value="${exp.work }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 职位 -->
                <label class="col-sm-2 control-label">职位</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expposition" value="${exp.position }">
                    </label>
                </div>

                <!-- 离职原因 -->
                <label class="col-sm-2 control-label">离职原因</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expreason" value="${exp.reason }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 工作起始时间 -->
                <label class="col-sm-2 control-label">工作起始时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expstart"
                               value="<fmt:formatDate value='${exp.start }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>

                <!-- 工作结束时间 -->
                <label class="col-sm-2 control-label">工作结束时间</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="expend"
                               value="<fmt:formatDate value='${exp.end }' pattern='yyyy-MM-dd'/>"
                               onclick="laydate({format: 'YYYY-MM-DD'})">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 新增 or 删除 一行 -->
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn-exp btn btn-sm btn-outline btn-primary" onclick="add_exp(this)">
                        <i class="fa fa-plus"></i> 新增
                    </button>
                </label>
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                        <i class="fa fa-minus"></i> 删除
                    </button>
                </label>
            </div>
        </div>
    <!--
        </form>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <form action="$ {ctx }/admin/family/save?id=$ {fmy.id }" id="family-detail-form" class="form-horizontal" method="post" -->
        <div align="center">
            <label><br/>家庭成员或社会关系</label>
        </div>

        <div>
            <div class="form-group">

                <!-- 姓名 -->
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmyname" value="${fmy.name }">
                    </label>
                </div>

                <!-- 关系 -->
                <label class="col-sm-2 control-label">关系</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmyrelation" value="${fmy.relation }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 年龄 -->
                <label class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmyage" value="${fmy.age }">
                    </label>
                </div>

                <!-- 联系方式 -->
                <label class="col-sm-2 control-label">联系方式</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmycontact" value="${fmy.contact }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 工作单位 -->
                <label class="col-sm-2 control-label">工作单位</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmycompany" value="${fmy.company }">
                    </label>
                </div>

                <!-- 职位 -->
                <label class="col-sm-2 control-label">职位</label>
                <div class="col-sm-4">
                    <label>
                        <input type="text" class="form-control" name="fmyposition" value="${fmy.position }">
                    </label>
                </div>
            </div>
            <div class="form-group">

                <!-- 新增 or 删除 一行 -->
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn-fmy btn btn-sm btn-outline btn-primary" onclick="add_fmy(this)">
                        <i class="fa fa-plus"></i> 新增
                    </button>
                </label>
                <label class="col-sm-2 control-label">
                    <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                        <i class="fa fa-minus"></i> 删除
                    </button>
                </label>
            </div>
        </div>

    </form>
</div>

<%@include file="/common/foot.jsp" %>

<script id="emergency_contact_tmp" type="text/template">
    <div>
        <div class="form-group">

            <!-- 姓名 -->
            <label class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="emgname" value="${emg.name }">
                </label>
            </div>

            <!-- 关系 -->
            <label class="col-sm-2 control-label">关系</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="emgrelation" value="${emg.relation }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 联系电话 -->
            <label class="col-sm-2 control-label">联系电话</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="emgphone" value="${emg.phone }">
                </label>
            </div>

            <!-- 单位或住址 -->
            <label class="col-sm-2 control-label">单位或住址</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="emgaddress" value="${emg.address }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 新增 or 删除 一行 -->
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_emg(this)">
                    <i class="fa fa-plus"></i> 新增
                </button>
            </label>
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                    <i class="fa fa-minus"></i> 删除
                </button>
            </label>
        </div>
    </div>
</script>
<script id="education_tmp" type="text/template">
    <div>
        <div class="form-group">
            <!-- 学习起始时间 -->
            <label class="col-sm-2 control-label">学习起始时间</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="edustart"
                           value="<fmt:formatDate value='${edu.start }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>

            <!-- 学习结束时间 -->
            <label class="col-sm-2 control-label">学习结束时间</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="eduend"
                           value="<fmt:formatDate value='${edu.end }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 学历 -->
            <label class="col-sm-2 control-label">学历</label>
            <div class="col-sm-4">
                <label>
                    ${enum:detail('EmployeeEducationStatus', 'edurecord', edu.record) }
                </label>
            </div>

            <!-- 专业 -->
            <label class="col-sm-2 control-label">专业</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="edumajor" value="${edu.major }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 证书 -->
            <label class="col-sm-2 control-label">证书</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="certificate" value="${edu.certificate }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 新增 or 删除 一行 -->
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_edu(this)">
                    <i class="fa fa-plus"></i> 新增
                </button>
            </label>
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                    <i class="fa fa-minus"></i> 删除
                </button>
            </label>
        </div>
    </div>
</script>
<script id="experience_tmp" type="text/template">
    <div>
        <div class="form-group">

            <!-- 单位 -->
            <label class="col-sm-2 control-label">单位</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expcompany" value="${exp.company }">
                </label>
            </div>

            <!-- 工作 -->
            <label class="col-sm-2 control-label">工作</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expwork" value="${exp.work }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 职位 -->
            <label class="col-sm-2 control-label">职位</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expposition" value="${exp.position }">
                </label>
            </div>

            <!-- 离职原因 -->
            <label class="col-sm-2 control-label">离职原因</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expreason" value="${exp.reason }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 工作起始时间 -->
            <label class="col-sm-2 control-label">工作起始时间</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expstart"
                           value="<fmt:formatDate value='${exp.start }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>

            <!-- 工作结束时间 -->
            <label class="col-sm-2 control-label">工作结束时间</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="expend"
                           value="<fmt:formatDate value='${exp.end }' pattern='yyyy-MM-dd'/>"
                           onclick="laydate({format: 'YYYY-MM-DD'})">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 新增 or 删除 一行 -->
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_exp(this)">
                    <i class="fa fa-plus"></i> 新增
                </button>
            </label>
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                    <i class="fa fa-minus"></i> 删除
                </button>
            </label>
        </div>
    </div>
</script>
<script id="family_tmp" type="text/template">
    <div>
        <div class="form-group">

            <!-- 姓名 -->
            <label class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmyname" value="${fmy.name }">
                </label>
            </div>

            <!-- 关系 -->
            <label class="col-sm-2 control-label">关系</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmyrelation" value="${fmy.relation }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 年龄 -->
            <label class="col-sm-2 control-label">年龄</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmyage" value="${fmy.age }">
                </label>
            </div>

            <!-- 联系方式 -->
            <label class="col-sm-2 control-label">联系方式</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmycontact" value="${fmy.contact }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 工作单位 -->
            <label class="col-sm-2 control-label">工作单位</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmycompany" value="${fmy.company }">
                </label>
            </div>

            <!-- 职位 -->
            <label class="col-sm-2 control-label">职位</label>
            <div class="col-sm-4">
                <label>
                    <input type="text" class="form-control" name="fmyposition" value="${fmy.position }">
                </label>
            </div>
        </div>
        <div class="form-group">

            <!-- 新增 or 删除 一行 -->
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-primary" onclick="add_fmy(this)">
                    <i class="fa fa-plus"></i> 新增
                </button>
            </label>
            <label class="col-sm-2 control-label">
                <button type="button" class="btn btn-sm btn-outline btn-danger" onclick="del_tr(this)">
                    <i class="fa fa-minus"></i> 删除
                </button>
            </label>
        </div>
    </div>
</script>
<script>
    function add_emg(obj) {
        var tmp = document.getElementById("emergency_contact_tmp").innerHTML;
        $(obj).parent().parent().parent().after(tmp);
    }
    function add_edu(obj) {
        var tmp = document.getElementById("education_tmp").innerHTML;
        $(obj).parent().parent().parent().after(tmp);
    }
    function add_exp(obj) {
        var tmp = document.getElementById("experience_tmp").innerHTML;
        $(obj).parent().parent().parent().after(tmp);
    }
    function add_fmy(obj) {
        var tmp = document.getElementById("family_tmp").innerHTML;
        $(obj).parent().parent().parent().after(tmp);
    }
    function del_tr(obj) {
        $(obj).parent().parent().parent().remove();
    }
</script>
</body>
</html>
