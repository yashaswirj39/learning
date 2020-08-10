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
    
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"iblogin\",\"event-name\":\"nft_ibLogin\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'addr_network':'','device_id':'','lastLogints':'','loginstatus':'','device_type':''," +
            "'source':'ib','host_id':'F','logints':'','succ_fail_flg':'','user_id':'','error_desc':'','last_login_ip':'','sys_time':''," +
            "'error_code':'','cust_id':'','time_slot':'','eventts':'','cntry_code':'001'}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>