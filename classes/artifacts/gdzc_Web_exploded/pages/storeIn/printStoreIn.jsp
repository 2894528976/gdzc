<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="com.javareport.beans.Report,com.niuys.gdzc.util.report"%>
<%@ page extends="com.javareport.http.WebReportEngine"%>
<%!
public Report createReport(HttpServletRequest request) throws Exception{
    Report data = report.getData(request);
    return data;

}
    //定制Web报表在页面首部显示的工具栏为标准的样式,增加一个"返回"按钮,返回到首页
    public  String getToolbarScript(HttpServletRequest request){
        return "<a href=\"/hms/storeInShowAll.do\"><img src=\""+request.getRequestURI()+
                "?op=Resource&name=/resource/back.gif\" border=\"0\" alt=\"返回\"></a>";
    }

%>
