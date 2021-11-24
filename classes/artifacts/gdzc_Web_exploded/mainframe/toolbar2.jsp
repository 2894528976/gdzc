<%@ page language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <base href="<%=request.getScheme()%>://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/">

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
        <div class="flex" id="flexMy">

            <div class="relative" width="5%">
                <a href="" onclick="return false;">
                    资产增加</a>
                <div class="absolute">
                    <div><a href="../userManaAction.do" target="main" onclick="return false;">资产申购</a></div>
<%--                    添加资产--%>
                    <div><a href="zcinfo/zcinfo_add.jsp"  target="main" >资产登记</a></div>
                </div>
            </div>
            <div class="relative" width="5%">
                <a href="" onclick="return false;">
                    验收入库</a>

                <div class="absolute">
<%--                    资产管理--%>
                    <div><a href="zcgl.do"  target="main" >资产验收</a></div>
                    <div>实物入账</div>
                    <div>财务入账</div>
                </div>

            </div>

            <div class="relative" width="7%">
                <a href="" onclick="return false;">
                    &nbsp;&nbsp;在账管理&nbsp;&nbsp;</a>

                <div class="absolute">


                    <div><a href="../userManaAction.do" target="main" onclick="return false;">使用信息变更</a></div>
                    <div> <a href="../userManaAction.do" target="main" onclick="return false;">增值、减值</a></div>
                    <div> <a href="../userManaAction.do" target="main" onclick="return false;">部门调拨（领/借）</a></div>
                    <div> <a href="../userManaAction.do" target="main" onclick="return false;">企外调出</a></div>
                    <div> <a href="../userManaAction.do" target="main" onclick="return false;">丢失</a></div>
<%--借还查询--%>
                    <div>  <a  target="main"  href="zc_inout/zcInOutCheck.jsp">资产清查</a></div>
<%--                  维修管理--%>
                    <div> <a   target="main"  href="assetPerAction.do">维修、维护</a></div>
                    <div> 毁损、报废</div>

                </div>
            </div>
            <div class="relative" width="5%">
                <a href="zcgl.do" onclick="return false;">
                    设置/查询
                </a>
                <div class="absolute">
<%--                    资产查询--%>
                    <div><a href="zc_check/checkzc.jsp"  target="main"  >资产查询</a></div>
                </div>
            </div>
            <div class="relative" width="5%">
                <a href="zc_check/checkzc.jsp" target="main" onclick="return false;">
                    固定资产分析
                </a>
                <div class="absolute">
                    <div><a href="userManaAction.do" target="main" onclick="return false;">固定资产分析</a></div>
<%--打印报表--%>
                    <div><a href="printStoreIn.do"  target="main"  >报表打印</a></div>
                </div>
            </div>
            <c:if test="${sessionScope.competence == '管理员' }">
                <div class="relative" width="5%">
                    <a href="userManaAction.do" target="main" onclick="return false;">
                        用户管理
                    </a>
                    <div class="absolute">
                        <div><a  target="main" href="user_info/user_add.jsp">用户添加</a></div>
                        <div><a  target="main" href="userManaAction.do">用户管理</a></div>
                    </div>
                </div>
            </c:if>
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
    .relative>a{
        LINE-HEIGHT: 25px;
    }
    A {
        text-align: center;
        display: inline;
        font-size: 12px;
        PADDING-RIGHT: 8px;
        PADDING-LEFT: 8px;
        PADDING-BOTTOM: 0px;
        MARGIN: 0px;
        COLOR: #325b0a;

        PADDING-TOP: 0px;
        text-decoration:none;
    }

    A:hover {
        BACKGROUND: #95b274;
        COLOR: #fff;
        /*LINE-HEIGHT: 25px;*/
        /*BORDER-BOTTOM: #7c9a57 3px solid;*/
        /*HEIGHT: 25px;*/
        TEXT-DECORATION: none;

        /*BORDER-BOTTOM: #7c9a57 3px solid;*/
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
