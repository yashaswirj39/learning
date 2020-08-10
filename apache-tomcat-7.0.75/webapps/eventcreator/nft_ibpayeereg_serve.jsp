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

    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"ibpayeereg\",\"event-name\":\"nft_ibpayeereg\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'payee_account_id':'','payee_mmid':'','payee_bank_name':'','on_off_flg':'','source':'ib'," +
            "'payee_id':'','payee_type':'','succ_fail_flg':'','error_desc':'','sys_time':'','payee_branch_name':'','payee_ifsc_code':''," +
            "'time_slot':'','addr_network':'','payee_ref_no':'','mfa_type':'','payee_status':'','device_id':'','payee_accounttype':''," +
            "'payee_account_name':'','payee_bank_id':'','post_mfa_flag':'','host_id':'F','payee_nickname':'','payee_branch_id':'','txn_ts':''," +
            "'user_id':'','error_code':'','cust_id':'','eventts':'','payee_cust_id':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>