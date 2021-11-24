<%@ page language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <SCRIPT language=JavaScript src="../js/pinbi.js"></SCRIPT>
    <title>Title</title>
</head>
<body>
<div class="tableborder" id="test">
    <div class="f2" id="menu">
        <div>
            <span>
<div width="5%" style=" padding-left: 10px;font-weight: 700;line-height: 25px">
        <font color=blue face="Arial, Helvetica, sans-serif" size="-1">
        您好：${sessionScope.username }
    </font>
</div>
            </span>
        </div>


        <div class="flex">
            <div class="relative" width="5%">
                <a href="../lendInfos.do" target="main" target="main">
                    资产增加
                </a>
                <div class="absolute">
                    <div>资产申购</div>
                    <div>资产登记</div>
                </div>

            </div>
            <div class="relative" width="5%">
                <a href="../lendInfos.do" target="main" target="main">
                    验收入库
                </a>
                <div class="absolute">
                    <div>资产验收</div>
                    <div>实物入账</div>
                    <div>财务入账</div>
                </div>

            </div>
            <div class="relative" width="5%">
                <a href="../lendInfos.do" target="main" target="main">
                    在账管理
                </a>
                <div class="absolute">


                    <div>使用信息变更</div>
                    <div> 增值、减值</div>
                    <div> 部门调拨（领/借）</div>
                    <div> 企外调出</div>
                    <div> 丢失</div>
                    <div> 固定资产清查、处置</div>
                    <div> 维修、维护</div>
                    <div> 毁损、报废</div>
                </div>
            </div>


            <div class="relative" width="5%">
                <a href="../zcgl.do" target="main">设置/查询</a>
                <div class="absolute">

                    <div>资产查询</div>
                </div>
            </div>
            <div class="relative" width="5%">
                <a href="../zc_check/checkzc.jsp" target="main">固定资产分析</a>
                <div class="absolute">
                    <div>用户添加</div>
                    <div>用户管理</div>
                </div>
            </div>

            <c:if test="${sessionScope.competence == '管理员' }">
                <div class="relative" width="5%"><a href="../userManaAction.do" target="main">用户管理</a>
                    <div class="absolute">
                        <div>用户添加</div>
                        <div>用户管理</div>
                    </div>
                </div>
            </c:if>
            <div class="relative" width="5%">
                <a href="../zc_inout/zcInOutCheck.jsp" target="main">修改密码 </a>
                <div class="absolute">

                </div>
            </div>




        </div>
    </div>
</div>
<script>
    var elementsByClassName = document.getElementsByClassName("relative");
    for (let i = 0; i < elementsByClassName.length; i++) {
        elementsByClassName[i].addEventListener("click", function () {
            var cn = this.classList;
            this.className += " relativea";
            elementsByClassName[i].addEventListener("mouseleave", function () {
                this.classList.remove("relativea");
            });
        });
    }
</script>
<style>
    .absolute > div {
        COLOR: #325b0a;
        font-size: 11px;
        text-align: center;
        margin: 10px 0px;
        padding-bottom: 3px;
    }

    .absolute > div:hover {
        BACKGROUND: #95b274;
        COLOR: #fff;
        padding-bottom: 0px;
        BORDER-BOTTOM: #7c9a57 3px solid;
    }

    .relativea {
        position: relative;
    }

    .relativea:hover > .absolute {

        display: inline-block;
        top: 30px;
        left: calc(5% - 3px);
        width: 100%;
        BACKGROUND: #cbe4b0;
        position: absolute;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    }

    .absolute {
        z-index: 99999;
        display: none;

    }

    .flex {
        display: inline-block;
        width: 85%;

        display: flex;
        justify-content: space-around;

    }

    A {
        text-align: center;
        display: inline-block;
        font-size: 12px;
        PADDING-RIGHT: 8px;
        PADDING-LEFT: 8px;
        PADDING-BOTTOM: 0px;
        MARGIN: 0px;
        COLOR: #325b0a;
        LINE-HEIGHT: 25px;
        PADDING-TOP: 0px;
        TEXT-DECORATION: none
    }

    A:hover {
        BACKGROUND: #95b274;
        COLOR: #fff;
        LINE-HEIGHT: 25px;
        BORDER-BOTTOM: #7c9a57 3px solid;
        HEIGHT: 25px;
        TEXT-DECORATION: none;

        BORDER-BOTTOM: #7c9a57 3px solid;
    }

    .tableborder {
        z-index: -1;
        border: 1px solid #0099FF;
    }

    #menu {
        margin: 2px;
        BORDER-RIGHT: #709d3e;
        BORDER-TOP: #709d3e 1px solid;
        BACKGROUND: #cbe4b0 no-repeat right 50%;
        BORDER-LEFT: #709d3e;
        COLOR: #bad098;
        BORDER-BOTTOM: #709d3e;
        height: 30px;
    }

    .f2 {
        display: flex;
        justify-content: space-between;
    }

    @media all and (max-width: 700px) {
        #menu {
            height: 60px;
        }
    }
</style>
</body>
</html>

<%--
<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">

	<link type="text/css" href="../css/toolbar_style.css" rel="stylesheet">
	<SCRIPT language=JavaScript src="../js/pinbi.js"></SCRIPT>
  </head>

	<body>
	<table width="100%" border="0" class="tableborder">
      <tr>
        <td><table width="98%" border="0" align="center" class="bgcontain" id="menu">
          <tr>
            <td width="5%"><b><font color=blue  face="Arial, Helvetica, sans-serif" size="-1">您好：${sessionScope.username }</font></b></td>

            <td width="5%">
                <div class="relative">
                    <a href="../zcgl.do" target="main">资产管理</a>
                    <div class="absolute">
                        <div>资产申购</div>
                        <div>资产登记</div>
                        <div>资产申购</div>
                        <div>资产登记</div>
                        <div>资产申购</div>
                        <div>资产登记</div>
                        <div>资产申购</div>
                        <div>资产登记</div>
                        <div>资产申购</div>
                        <div>资产登记</div>
                    </div>
                </div>

                <style>
                    .absolute {
                        display: none;

                    }
                    .absolute > div {
                        COLOR: #325b0a;
                        font-size: 11px;
                        text-align: center;
                        margin: 10px 5px;
                        padding-bottom: 3px;
                    }
                    .relative:hover > .absolute {
                        display: inline-block;
                        top: 30px;
                        left: calc(5% - 3px);
                        width: 100%;
                        BACKGROUND: #cbe4b0;
                        position: absolute;
                        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
                    }

                    .absolute > div:hover {
                        BACKGROUND: #95b274;
                        COLOR: #fff;
                        padding-bottom: 0px;
                        BORDER-BOTTOM: #7c9a57 3px solid;
                    }
                    .relative {
                        display: inline-block;
                        position: relative;
                    }
                </style>
            </td>

            <td width="5%"><a href="../zc_check/checkzc.jsp" target="main">资产查询</a></td>

            <td width="5%"><a href="../lendInfos.do" target="main" target="main">借还管理</a></td>

            <td width="5%"><a href="../zc_inout/zcInOutCheck.jsp" target="main">借还查询</a></td>

            <td width="5%"><a href="../assetPerAction.do"  target="main">维修管理</a></td>

            <td width="5%"><a href="../zc_wx/checkZcwxInfo.jsp" target="main">维修查询</a></td>

            <td width="5%"><a href="../employeeAction.do" target="main">员工管理</a></td>

            <td width="5%"><a href="../printStoreIn.do" target="main">打印报表</a></td>

			<c:if test="${sessionScope.competence == '管理员' }">
            <td width="5%"><a href="../userManaAction.do"target="main">用户管理</a></td>
            </c:if>

            <td width="5%"><a href="../user_info/updatepwd.jsp" target="main">修改密码</a></td>

          </tr>

        </table></td>
      </tr>
    </table>
</body>
    </html>--%>
