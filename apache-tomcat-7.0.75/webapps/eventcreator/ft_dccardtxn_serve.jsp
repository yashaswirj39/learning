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

    String jsonEvent = "{\"keys\":\"\",\"eventsubtype\":\"dccardtxn\",\"event-name\":\"ft_dccardtxn\",\"eventtype\":\"ft\"," +
            "\"msgBody\":\"{'eventsubtype':'dccardtxn','event_name':'ft_dccardtxn','eventtype':'ft','txn_reference_no':'','channel':''," +
            "'source':'dc','mcc':'','avl_bal':'','card_no':'','proc_code':'','sys_time':'','acq_inst_id_code':'','txn_amt':'','addr_network':''," +
            "'tran_type':'','acq_inst_cntry':'','txn_crncy_code':'','host_id':'F','txn_date':'','event_id':'','acq_inst_city':'','domestic_int_flg':'','card_type_flg':'','resp_code':'','acct_no':'','msg_type':'','acq_inst_addr':'','cust_id':'','eventts':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>