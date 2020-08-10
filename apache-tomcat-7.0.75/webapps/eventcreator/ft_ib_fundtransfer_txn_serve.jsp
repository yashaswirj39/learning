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

    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"ibfundstransfer\",\"event-name\":\"ft_ibfundstransfer\",\"eventtype\":\"ft\","
            + "\"msgBody\":\"{'txn_crncy':'','tran_id':'','source':'ib','payee_id':'','cr_acct_name':'','cr_branch_id':'',"
            + "'cr_branch_name':'','avl_bal':'','succ_fail_flg':'','error_desc':'','bank_id':'','sys_time':'','dr_acct_id':'',"
            + "'cr_bank_name':'','time_slot':'','txn_amt':'','addr_network':'','device_id':'','tran_type':'','host_id':'F',"
            + "'cr_acct_id':'','user_id':'','cr_bank_id':'','txn_ref_no':'','error_code':'','recharge_no':'','cust_id':'',"
            + "'eventts':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>