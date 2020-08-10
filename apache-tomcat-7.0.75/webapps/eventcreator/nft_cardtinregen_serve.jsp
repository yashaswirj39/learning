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

    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"cardtinregen\"," +
            "\"event-name\":\"nft_cardtinregen\",\"eventtype\":\"nft\",\"msgBody\":\"{'succ_fail_flg':'F','card_no':'','rqst_chnl':''," +
            "'error_desc':'','sys_time':'','error_code':'','Online_offline':'','source':'dc','cust_id':'','host_id':'F','time_slot':''," +
            "'eventts':'','addEntity1':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>