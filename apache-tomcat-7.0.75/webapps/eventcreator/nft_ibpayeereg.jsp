<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"ibpayeereg\",\"event-name\":\"nft_ibpayeereg\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'payee_account_id':'','payee_mmid':'','payee_bank_name':'','on_off_flg':'','source':'ib'," +
            "'payee_id':'','payee_type':'','succ_fail_flg':'','error_desc':'','sys_time':'','payee_branch_name':'','payee_ifsc_code':''," +
            "'time_slot':'','addr_network':'','payee_ref_no':'','mfa_type':'','payee_status':'','device_id':'','payee_accounttype':''," +
            "'payee_account_name':'','payee_bank_id':'','post_mfa_flag':'','host_id':'F','payee_nickname':'','payee_branch_id':'','txn_ts':''," +
            "'user_id':'','error_code':'','cust_id':'','eventts':'','payee_cust_id':''}\"}";

    String[] mandatoryFields = {"sys_time", "payee_account_id", "payee_cust_id", "cust_id"};
    String dropDownJson = "{" +
            "\"part_tran_type\": [\"C\", \"D\"]," +
            "\"tran_type\": [\"C\", \"T\", \"L\"]," +
            "\"tran_sub_type\": [\"NR\", \"NP\", \"CI\", \"BI\", \"I\", \"O\"]," +
            "\"schm_type\": [\"SBA\", \"CAA\", \"ODA\"]," +
            "\"acct_ownership\": [\"C\", \"E\", \"O\"]" +
            "}";

    EventJsonUtil eventJsonUtil = new EventJsonUtil(jsonEvent, mandatoryFields, dropDownJson);
%>
<html>
<head>
    <title>Event Creator</title>
</head>

<body>
<h2>IB Payee Registration Event</h2>
<form action="nft_ibpayeereg_serve.jsp" method="post">
    <table>
        <tbody id="idform">

        </tbody>
        <tbody>
        <tr>
            <td><input type="submit" value="Submit"/></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</form>
<script>
    var headerHtml = "";
    var bodyHtml = "";
    headerHtml = "<%=eventJsonUtil.getHeaderHtml() %>";
    bodyHtml = "<%=eventJsonUtil.getMsgBodyHtml() %>";
    document.getElementById("idform").innerHTML = bodyHtml + headerHtml;
</script>
</body>
</html>