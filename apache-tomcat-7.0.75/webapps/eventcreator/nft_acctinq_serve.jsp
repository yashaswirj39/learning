<%@ page import="clari5.platform.util.Hocon" %>
<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 28/8/17
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    System.out.println("\n\n Server.jsp called.");
    Hocon h = new Hocon();
    h.set("type", "nas");
    h.set("location", "/cxps/DATA/baseq");
    h.set("max_file_size", 30);
    h.set("write_retry_count", 3);
    h.set("no_of_writer", 2);

    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"acctinq\",\"event-name\":\"nft_acctinq\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'eventtype':'nft','eventsubtype':'acctinq','event_name':'nft_acctinq','branchid':'','empid':''," +
            "'branchiddesc':'','channel':'','source':'fin','host_id':'F','acct_id':'','avl_bal':'','user_id':'','sys_time':'','acct_name':''," +
            "'cust_id':'','menu_id':'','time_slot':'','eventts':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>