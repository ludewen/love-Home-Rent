<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/1
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="x-ua-compatible" content="IE=Edge">

    <meta name="keywords" content="">
    <meta name="description" content="">

    <meta name="viewport" content="width=1200">
    <meta http-equiv="cleartype" content="on">
    <title>求租信息管理 · MyHome</title>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/x-icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/jquery-confirm.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/ion.rangeSlider.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/ion.rangeSlider.skinHTML5.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/center/ucenter_custom.css" rel="stylesheet"/>


    <style>
        .jconfirm-box {
            margin-top: 30% !important;
        }

        img {
            height: inherit;
        }
    </style>


</head>
<body>

<!-- 模态框（Modal） -->
<div class="modal fade" id="uploadModel" tabindex="-1" role="dialog" aria-labelledby="uploadModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="text-align:center;">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title upload" id="uploadModelLabel">
                    求租信息详情
                </h4>
            </div>
            <form class="form-horizontal style-form" method="post" action="" enctype="multipart/form-data"
                  onSubmit="return myCheck(this)">

                <div class="modal-body">
                    <div class="form-group" style="border:none;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">租房标题:</span>
                        <div class="col-sm-6">
                            <input type="text" id="modal-title" check-type="required" value="" name="title"
                                   class="form-control">
                            <span class="help-block"></span>
                        </div>
                        <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult1" style="color:red">*</font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">房屋需求:</span>
                        <div class="col-sm-8">
                            <textarea id="modal-content" readonly="readonly" name="content" check-type="required"
                                      class="form-control message_content" rows="4" check-type="required"
                                      type="text"></textarea>
                        </div>
                        <div class="col-sm-2" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult2" style="color:red">*</font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">联系电话:</span>
                        <div class="col-sm-3">
                            <input type="text" name="mPhone" value="" id="modal-mphone" check-type="required tel"
                                   class="form-control">
                        </div>
                        <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult3" style="color:red">*</font>
                        </div>


                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">状态:</span>
                        <div class="col-sm-3">
                            <select class="form-control" check-type="required" name="status" id="select_status">


                                <option value="1" selected="selected">上架中</option>
                                <option value="0">已下架</option>

                            </select>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">

                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">创建人:</span>
                        <div class="col-sm-3">
                            <input type="text" name="createName" check-type="required" value="" id="modal-createName"
                                   class="form-control">
                        </div>


                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">创建时间:</span>
                        <div class="col-sm-4">
                            <input type="text" readonly="readonly" name="mCreateTime" value="" id="modal-mCreateTime"
                                   class="form-control">
                        </div>
                        <div class="col-sm-1" style="text-align:left;padding:0;height:32px;line-height:32px;">
                            <font id="showResult5" style="color:red"></font>
                        </div>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">
                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">想住在哪:</span>
                        <div class="col-sm-6">
                            <input type="text" readonly="readonly" check-type="required" value="" id="modal-address"
                                   class="form-control">
                        </div>


                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">

                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">入住时间:</span>
                        <div class="col-sm-4">
                            <input type="text" readonly="readonly" value="" id="modal-liveTime" class="form-control">
                        </div>

                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">想住多大:</span>
                        <span class="col-sm-3" id="modal-roomArea"
                              style="color:#5bc0de;font-size:16px;float:left;height:28px;text-align:left;line-height:28px;"></span>

                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">

                        <span class="col-sm-2"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">我的预算:</span>
                        <span class="col-sm-6" id="modal-price"
                              style="color:#5bc0de;font-size:16px;float:left;height:28px;text-align:left;line-height:28px;"></span>

                    </div>


                    <div class="form-group" style="border:none;margin-top:30px;">

                        <span class="col-sm-3"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">关联人姓名:</span>
                        <div class="col-sm-3">
                            <input type="text" readonly="readonly" name="user_name" value="" id="modal-user_name"
                                   class="form-control">
                        </div>

                        <span class="col-sm-3"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">关联人电话:</span>
                        <div class="col-sm-3">
                            <input type="text" readonly="readonly" name="user_phone" value="" id="modal-user_phone"
                                   class="form-control">
                        </div>
                    </div>

                    <div class="form-group" style="border:none;margin-top:30px;">

                        <span class="col-sm-3"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">关联人性别:</span>
                        <div class="col-sm-3">
                            <input type="text" readonly="readonly" name="user_sex" value="" id="modal-user_sex"
                                   class="form-control">
                        </div>

                        <span class="col-sm-3"
                              style="color:#000;font-size:16px;float:left;height:28px;text-align:right;line-height:28px;">关联人角色:</span>
                        <div class="col-sm-3">
                            <input type="text" readonly="readonly" name="user_phone" value="" id="modal-user_role"
                                   class="form-control">
                        </div>
                    </div>

                </div>


                <div class="modal-footer">

                    <button type="button" id="btn_push_files" onclick="updataModel(${rentGet.rgId})"
                            class="btn btn-round btn-primary">
                        保存
                    </button>
                    <button type="button" class="btn btn-round btn-default" data-dismiss="modal">
                        取消
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<!--页头-->
<div class="header-nav-box">
    <div class="container">
        <div class="row header">
            <div class="header-nav-left">
                <a href="${pageContext.request.contextPath}/main/toIndex" class="site-log">
                    <img src="${pageContext.request.contextPath}/img/logo.png" alt="">
                </a>
            </div>
            <div class="header-nav-right">
                <ul>

                    <li class="nav-user-info">
                        <a href="/" class="nav-user-pic">

                            <c:if test="${not empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/upload/${user.hardIcon}" class="img-circle"
                                     alt="" style="width:45px;height:45px;padding-top: 3px;" id="icon">
                            </c:if>
                            <c:if test="${ empty user.hardIcon}">
                                <img src="${pageContext.request.contextPath}/img/default-male-avatar.png" id="icon"
                                     class="img-circle" style="width:45px;height:45px;padding-top: 3px;">
                            </c:if>
                        </a>
                    </li>
                    <li>
                        <c:if test="${empty user}">
                            <a href="${pageContext.request.contextPath}/main/toShowLogin"
                               target="_blank">登录</a><span>|</span><a
                                href="${pageContext.request.contextPath}/main/toShowReg" target="_blank">注册</a>
                        </c:if>
                        <c:if test="${not empty user}">
                            <span><a style="color: #0fa39f"
                                     href="${pageContext.request.contextPath}/userFind/toShowUserCenter/${user.id}">${user.name}</a>,你好！ |  <a
                                    href="${pageContext.request.contextPath}/user/logout">退出</a></span>
                        </c:if>

                    </li>

                </ul>
            </div>

        </div>
    </div>
</div>


<!--内容-->
<div class="container" id="page-main">
    <!--左部-->
    <!--右部-->

    <script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
    <script>
        $(function () {
            $("#li" + 8).addClass("active");
        })

    </script>
    <!--左部-->
    <jsp:include page="user_left.jsp"></jsp:include>


    <div class="main-right">
        <div class="main-right-inner">
            <div class="right-hd">
                <h3 class="right-title">求租信息管理</h3>
            </div>
            <div class="container-fluid">
                <div class="row">

                    <!-- 上部放按钮的地方开始 -->
                    <form class="form-horizontal style-form" method="get"
                          action="${pageContext.request.contextPath}/rentget/findAllRentget"
                          style="margin-top:10px;text-align:center;">
                        <div class="form-group" style="border:none;margin-top:5px;">
                            <div class=" col-sm-3" style="float:left;">
                                <a href="${pageContext.request.contextPath }/main/toShowPushRent">
                                    <button type="button" class="btn btn-success">
                                        <span class="glyphicon glyphicon-user"
                                              style="color: rgb(255,255,255); font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;发布求租</span>
                                    </button>
                                </a>

                                <button type="button" class="btn btn-danger" onclick="deledecfm()" id="user_delete_all">
                                    <span class="glyphicon glyphicon-trash"
                                          style="color: rgb(255,255,255); font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;全部下架</span>
                                </button>

                            </div>

                            <div class=" col-sm-5" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">标题/内容：</span>

                                <input type="text" name="Info" class="form-control" value=""
                                       style="width:60%;height:28px;float:left;">

                            </div>
                            <button type="submit" class="btn btn-round btn-warning"
                                    style="height:28px;text-align:center;line-height:28px;">
                                <span class="glyphicon glyphicon-search"
                                      style="color: rgb(255,255,255);text-align: center; font-size: 12px;text-shadow: rgb(255,255,255) 0px 0px 0px; ">&nbsp;搜索</span>
                            </button>


                        </div>
                        <div class="form-group" style="border:none;">
                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">手机号：</span>

                                <input type="text" name="phone" value="" class="form-control bor3"
                                       style="width:45%;height:28px;float:left;">

                            </div>

                            <div class=" col-sm-5" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">使用状态：</span>

                                <select class="form-control bor3" style="width:45%;font-size:12px;height:28px;"
                                        name="getStatus">
                                    <option value="" selected="selected">请选择</option>
                                    <option value="1">上架中</option>
                                    <option value="0">已下架</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="border:none;">
                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">入住时间：</span>

                                <input type="text" class="form-control bor3 contract_time_today" id="startLiveTime"
                                       name="startLiveTime" placeholder="起始时间"
                                       style="width:30%;height:28px;float:left;">

                                <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                <input type="text" class="form-control bor3 contract_time_today" name="endLiveTime"
                                       id="endLiveTime" placeholder="终止时间" style="width:30%;height:28px;">
                            </div>
                            <div class=" col-sm-5" style="float:left;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">创建人:</span>

                                <input type="text" name="rgName" value="" class="form-control"
                                       style="width:45%;height:28px;float:left;">

                            </div>

                        </div>
                        <div class="form-group" style="border:none;">
                            <span style="width:19%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">我想住在：</span>

                            <div class="col-sm-2" id="Address">
                                <select class="form-control" id="province" onchange="provinceChange()"
                                        style="margin-left:15px;">
                                    <option value="">省份</option>
                                </select>

                            </div>
                            <div class="col-sm-2">
                                <select class="form-control" id="city" onchange="cityChange()">
                                    <option value="">城市</option>
                                </select>
                            </div>
                            <div class="col-sm-2">
                                <select class="form-control" id="area" onchange="areaChange()">
                                    <option value="">区域</option>
                                </select>
                            </div>
                            <input type="hidden" id="re_roomAddress" name="roomAddress" value="">

                        </div>
                        <div class="form-group" style="border:none;">
                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">最低预算：</span>

                                <input type="text" class="form-control round-form" id="minPriceBegin"
                                       name="minPriceBegin" placeholder="最低价格"
                                       style="width:30%;height:28px;float:left;">

                                <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                <input type="text" class="form-control round-form" name="minPriceEnd" id="minPriceEnd"
                                       placeholder="最高价格" style="width:30%;height:28px;">
                            </div>
                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">关联人:</span>

                                <input type="text" name="userName" value="" class="form-control"
                                       style="width:45%;height:28px;float:left;">
                            </div>

                        </div>
                        <div class="form-group" style="border:none;">

                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">最高预算：</span>

                                <input type="text" class="form-control round-form" id="maxPriceBegin"
                                       name="maxPriceBegin" placeholder="最低价格"
                                       style="width:30%;height:28px;float:left;">

                                <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                <input type="text" class="form-control round-form" name="maxPriceEnd" id="maxPriceEnd"
                                       placeholder="最高价格" style="width:30%;height:28px;">
                            </div>

                            <div class=" col-sm-5" style="float:left;margin-left:40px;">
                                <span style="width:35%;color:#000;font-size:15px;float:left;height:28px;text-align:right;line-height:28px;">创建时间：</span>

                                <input type="text" class="form-control round-form" id="dateStart" name="dateStart"
                                       placeholder="起始时间" style="width:30%;height:28px;float:left;">

                                <span style="color: rgb(0, 0, 0);float:left;height:28px;text-align:center;line-height:28px;
				                  	  	  font-size: 24px; margin-left:3px;margin-right:3px;text-shadow: rgb(255, 0, 0) 0px 0px 0px;">
										  -
										  </span>

                                <input type="text" class="form-control round-form" name="finalTime" id="finalTime"
                                       placeholder="终止时间" style="width:30%;height:28px;">
                            </div>


                        </div>

                    </form>
                </div>

                <!-- 上部放按钮的地方结束-->
                <!-- 表格部分开始-->
                <table class="table ">
                    <thead>
                    <tr class="thead-dark">
                        <th style="text-align:center;"><input type="checkbox" class="list-child" value=""
                                                              id="check_all"/></th>
                        <th style="text-align:center;">创建人</th>
                        <th style="text-align:center;">求租标题</th>
                        <th style="text-align:center;">联系电话</th>
                        <th style="text-align:center;">求租价格</th>
                        <th style="text-align:center;">状态</th>
                        <th style="text-align:center;">创建时间</th>
                        <th style="text-align:center;">关联用户</th>
                        <th style="text-align:center;">操作</th>


                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pageRentgetInfo.list}" var="pageRentget">

                        <tr class="mylist">
                            <td style="text-align:center;"><input type="checkbox" class="list-child check_item"
                                                                  class="list-child" value=""/></td>
                            <td style="text-align:center;">${pageRentget.rgName}</td>
                            <td style="text-align:center;">${pageRentget.rgTitle}</td>
                            <td style="text-align:center;">${pageRentget.rgPhone}</td>
                            <td style="text-align:center;"><span style="color: #5bc0de;">${pageRentget.minPrice}</span>/<span
                                    style="color: #5bc0de;">${pageRentget.maxPrice}</span></td>
                            <td style="text-align:center;">
                                <c:if test="${pageRentget.getStatus == 1}">
                                    <button class="btn btn-success btn-xs"><i class="fa fa-trash-o "></i>上架中</button>

                                </c:if>
                                <c:if test="${pageRentget.getStatus == 0}">
                                    <button class="btn btn-drak btn-xs"><i class="fa fa-trash-o "></i>已下架</button>
                                </c:if>
                            </td>
                            <td style="text-align:center;"><fmt:formatDate value='${pageRentget.getCreateTime}'
                                                                           type='date' pattern='yyyy-MM-dd'/></td>
                            <td style="text-align:center;">${pageRentget.user.name}</td>
                            <td style="text-align:center;">
                                <c:if test="${pageRentget.getStatus == 1}">
                                    <!-- 你根据原型图修改操作的地方 -->
                                    <button type="button" onclick="edit_btn(${pageRentget.rgId})" id="edit_btn"
                                            class="btn btn-primary btn-xs" data-toggle="modal"
                                            u-id="${pageRentget.rgId}"><i class="fa fa-pencil"></i>
                                        编辑
                                    </button>
                                    <a href="${pageContext.request.contextPath}/rentget/deleteRentGet/${pageRentget.rgId}">
                                        <button type="button" onclick="del_btn()" class="btn btn-danger btn-xs"><i
                                                class="fa fa-pencil"></i>
                                            下架
                                        </button>
                                    </a>
                                </c:if>
                                <c:if test="${pageRentget.getStatus == 0}">
                                    <!-- 你根据原型图修改操作的地方 -->
                                    <button type="button" onclick="edit_btn(${pageRentget.rgId})" id="edit_btn"
                                            class="btn btn-primary btn-xs" data-toggle="modal"
                                            u-id="${pageRentget.rgId}"><i class="fa fa-pencil"></i>
                                        编辑
                                    </button>
                                    <a href="${pageContext.request.contextPath}/rentget/jihuoRentGet/${pageRentget.rgId}">
                                        <button type="button" onclick="jihuo_btn()" class="btn btn-drak btn-xs"><i
                                                class="fa fa-pencil"></i>
                                            上架
                                        </button>
                                    </a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <!-- 表格部分结束-->
                <!-- 显示分页条	 -->
                <div class="row">
                    <div class="col-md-6">
                        当前第${pageRentgetInfo.pageNum}页,共${pageRentgetInfo.pages}页,共${pageRentgetInfo.total}条记录
                    </div>
                    <div class="col-md-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath }/rentget/findAllRentget?pageNo=1">首页</a>
                                </li>
                                <li>
                                    <c:if test="${pageRentgetInfo.hasPreviousPage}">
                                        <a href="${ pageContext.request.contextPath }/rentget/findAllRentget?pageNo=${pageNum-1}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </c:if>
                                </li>
                                <c:forEach items="${pageRentgetInfo.navigatepageNums}" var="page_num">
                                    <c:if test="${page_num ==pageRentgetInfo.pageNum}">
                                        <li class="active"><a href="#">${page_num}</a></li>
                                    </c:if>
                                    <c:if test="${page_num != pageRentgetInfo.pageNum}">
                                        <li>
                                            <a href="${ pageContext.request.contextPath }/rentget/findAllRentget?pageNo=${page_num}">${page_num}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                                <li>
                                    <c:if test="${pageRentgetInfo.hasNextPage}">
                                        <a href="${ pageContext.request.contextPath }/rentget/findAllRentget?pageNo=${pageNum+1}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </c:if>

                                </li>
                                <li>
                                    <a href="${ pageContext.request.contextPath }/rentget/findAllRentget?pageNo=${pageRentgetInfo.pages}">末页</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div><!-- /content-panel -->

        </div>
    </div>


</div>

</div>
</div>

</div>


</div>

<script src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.zh-CN.js"></script>
<!--  时间插件js -->
<script type="text/javascript">

    $(function () {
        $("#dateStart").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            $("#dateStart").datetimepicker("setEndDate", getToday())
        });
    });
    $(function () {
        $("#finalTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            $("#finalTime").datetimepicker("setEndDate", getToday())
        });
    });

    $(function () {
        $("#startLiveTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            //  $("#dateStart").datetimepicker("setEndDate", getToday())
        });
    });
    $(function () {
        $("#endLiveTime").datetimepicker({
            bootcssVer: 3,  //bootstrap-datetimepicker＋bootstrap v3，但这个插件使用的时候，并没有和V3相匹配，仍然调用的是bootstrap V2的图标 把bootcssVer的值直接设为3，否则datetimepicker不会显示出上、下个月的箭头
            format: 'yyyy-mm-dd',
            minView: 'month',//设置时间选择为年月日 去掉时分秒选择
            todayBtn: true, //如果此值为true 或 "linked"，则在日期时间选择器组件的底部显示一个 "Today" 按钮用以选择当前日期。如果是true的话，"Today" 按钮仅仅将视图转到当天的日期，如果是"linked"，当天日期将会被选中。
            language: 'zh-CN',
            autoclose: true, //当选择一个日期之后是否立即关闭此日期时间选择器。
            keyboardNavigation: true, //是否允许通过方向键改变日期。
            forceParse: true, //当选择器关闭的时候，是否强制解析输入框中的值。
            todayHighlight: 1  //如果为true, 高亮当前日期
        }).on("click", function () {
            //設置可选的最后日期為當前日期
            // $("#finalTime").datetimepicker("setEndDate", getToday())
        });
    });

    $(function () {
        $("#minPriceBegin").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    $(function () {
        $("#maxPriceEnd").on("keyup", function () {
            var valid = /^\d{0,8}(\.\d{0,2})?$/.test(this.value),
                val = this.value;
            $("#price_info").html("");
            if (!valid) {
                $("#price_info").css("color", "red").html("请输入正确格式的金额");
                //console.log("Invalid input!");
                this.value = val.substring(0, val.length - 1);
            }
        });
    });

    //獲取當前日期
    function getToday() {
        var today = new Date()
        var year = today.getFullYear();
        var month = today.getMonth() + 1;
        var day = today.getDate();
        var todayStr = year + "-" + month + "-" + day;
        return todayStr;
    }
</script>

<script>


    //---------------------打开模态框--------------------
    function clear_form(ele) {
        //重置内容
        $(ele)[0].reset();
        //移除添加的雷和文本
        $(ele).find("*").removeClass("has-success has-error");
        $(ele).find(".help-block").text("");
    }

    //数组去除第一个
    function curtail(arr) {
        var newarr = [];
        for (i = 1; i < arr.length; i++) {
            newarr.push(arr[i]);
        }
        return newarr;
    }

    //时间戳转时间
    function RiQi(data) {
        var date = new Date(data)
        var Y = date.getFullYear() + '-'
        var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
        var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
        //var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
        // var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
        // var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
        //return Y + M + D + h + m + s
        return Y + M + D
    }


    var updataModelUid = "";

    function edit_btn(id) {
        //重置表单，清除数据
        clear_form('#uploadModel form');

        updataModelUid = id;
        $.ajax({
            url: "${pageContext.request.contextPath }/rentget/findById/" + id,
            type: "GET",
            success: function (result) {
                if (result != null) {

                    $('#modal-title').val(result.rgTitle);
                    $('#modal-content').val(result.roomDesc);
                    $('#modal-mphone').val(result.rgPhone);
                    $('#modal-liveTime').val(RiQi(result.liveTime));
                    $('#modal-roomArea').html(result.roomArea + "<i>㎡</i>");
                    $('#modal-price').html('￥' + result.minPrice + '-' + result.maxPrice + '元');
                    $('#modal-address').val(result.roomAddress);
                    $('#modal-createName').val(result.rgName);
                    $('#modal-mCreateTime').val(RiQi(result.getCreateTime));
                    $("#select_status").val(result.getStatus);
                    if (result.user != null) {
                        $("#modal-user_name").val(result.user.name);
                        $("#modal-user_phone").val(result.user.phone);
                        if (result.user.sex == 1) {
                            $("#modal-user_sex").val("男");
                        } else {
                            $("#modal-user_sex").val("女");
                        }

                        if (result.user.isOwner == 1) {
                            $("#modal-user_role").val("房东");
                        } else {
                            $("#modal-user_role").val("租客");
                        }

                    }

                } else {
                    alert("编辑失败，请联系管理员！");
                }

            }
        });
        //显示模态框
        $("#uploadModel").modal({
            backdrop: 'static'
        });

    }


    //完成全选/全部选
    $("#check_all").click(function () {
        //attr获取checked是undefined
        //一般用attr获取自定义的属性，用prop获取dom原生的属性
        $('.check_item').prop("checked", $(this).prop("checked"));
    });
    $(document).on("click", ".check_item", function () {
        var flag = ($(".check_item:checked").length == $(".check_item").length);
        $("#check_all").prop("checked", flag);
    });

    //批量禁用
    $("#user_delete_all").click(function () {
        var userNames = "";
        var del_id_strs = "";
        $.each($(".check_item:checked"), function () {
            //alert(del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('edit-id'));
            userNames += $(this).parents("tr").find("td:eq(1)").text() + ",";
            del_id_strs += del_id_strs = $(this).parents("tr").find("td:last").find("button").attr('u-id') + "-";
        });

        //去除最后的那个,
        userNames = userNames.substring(0, userNames.length - 1);
        del_id_strs = del_id_strs.substring(0, del_id_strs.length - 1);
        if (del_id_strs == "") {
            alert("请选择要下架的求租信息");
            return false;
        }
        // alert(del_id_strs);
        if (confirm("确定下架【" + userNames + "】吗?")) {
            $.ajax({
                url: "${pageContext.request.contextPath }/rentget/deleteRentGet/" + del_id_strs,
                type: "post",
                success: function (result) {
                    //关闭对话框
                    //alert(result.state);
                    //回到当前页
                    window.location.href = "${pageContext.request.contextPath }/rentget/findAllRentget";
                }
            });
        }

    });


    function del_btn() {
        if (!confirm("确认要下架吗？")) {

            window.event.returnValue = false;

        }
    }

    function jihuo_btn() {
        if (!confirm("确认要上架吗？")) {

            window.event.returnValue = false;

        }
    }


    //模态框的修改
    function updataModel() {

        var title = $('#modal-title').val();
        var mphone = $('#modal-mphone').val();
        var createName = $('#modal-createName').val();
        var mStatus = $('#select_status').val();

        $.post("${pageContext.request.contextPath}/rentget/updateManagerRentGetInfo",
            {"mid": updataModelUid, "title": title, "mphone": mphone, "createName": createName, "mStatus": mStatus},
            function (data) {
                if (data.state == 1) {
                    alert(data.message);
                    window.location.href = '${pageContext.request.contextPath}/rentget/findAllRentget';
                } else {
                    alert(data.message);
                }
            })
    }


</script>
<script src="${pageContext.request.contextPath}/js/data.js"></script>
<script src="${pageContext.request.contextPath}/js/address.js"></script>
<script src="${pageContext.request.contextPath}/js/center/ucenter_common.js"></script>
<!--统计代码-->
<script src="${pageContext.request.contextPath}/js/g.js"></script>


<script src="${pageContext.request.contextPath}/js/ion.rangeSlider.min.js"></script>

<script src="${pageContext.request.contextPath}/js/ucenter_info.js"></script>
<script src="${pageContext.request.contextPath}/js/qiniu.min.js"></script>


</body>
</html>