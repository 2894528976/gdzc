<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>固定资产管理系统</title>
</head>
<script>
    setTimeout(() => {
        var elementById = document.getElementById("tool");
       var children1 = elementById.contentWindow.document.getElementsByClassName("relative");
        for (let i = 0; i < children1.length; i++) {
            children1[i].addEventListener("click", function () {
                console.log(this)
                var chj = this.children;
			var aa = 	chj[1].children;
			console.log(aa)
                var www = document.getElementById("www");
                if (aa.length > 0) {
					if (aa.length == 1) {
                        www.rows=("65,80,*");
					}
                   else if (aa.length == 2) {
                        www.rows=("65,100,*");
                    }
					else if (aa.length == 3) {
                        www.rows=("65,140,*");
                    }
					else if (aa.length == 8) {
                        www.rows=("65,330,*");
                    }
                }
            });
        }
    }, 500)
</script>
<frameset id="www" name="head_main" rows="65,*,*">
    <script>
        console.log("frameset")
    </script>
    <frame src="mainframe/header.jsp" name="header" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"
           border="0" noresize bordercolor="#e7e7e7">
    <frame id="tool" style="z-index: 4" name="toolbar" src="mainframe/toolbar2.jsp" marginwidth="0" marginheight="0"
           scrolling="no" noresize="false" frameborder="0" border="0" marginheight="0" marginwidth="0"
           bordercolor="#e7e7e7">
    <frameset style="z-index: 3;" name="menu_main" cols="*">
        <frameset rows="*,20" cols="*" name="main_foot">
            <frame name="main" src="" scrolling="auto" frameborder="0" border="0">
            <frame name="foot" src="mainframe/foot.jsp" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"
                   noresize bordercolor="#e7e7e7" border="0">
        </frameset>
    </frameset>

</frameset>
<script>
    console.log("脚本")
</script>
<body>
<li><br></li>
<li>此浏览器不支持框架!</li>
</body>
</html>
