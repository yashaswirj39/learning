<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"ibfundstransfer\",\"event-name\":\"ft_ibfundstransfer\",\"eventtype\":\"ft\","
            + "\"msgBody\":\"{'txn_crncy':'','tran_id':'','source':'ib','payee_id':'','cr_acct_name':'','cr_branch_id':'',"
            + "'cr_branch_name':'','avl_bal':'','succ_fail_flg':'','error_desc':'','bank_id':'','sys_time':'','dr_acct_id':'',"
            + "'cr_bank_name':'','time_slot':'','txn_amt':'','addr_network':'','device_id':'','tran_type':'','host_id':'F',"
            + "'cr_acct_id':'','user_id':'','cr_bank_id':'','txn_ref_no':'','error_code':'','recharge_no':'','cust_id':'',"
            + "'eventts':''}\"}";

    String[] mandatoryFields = {"sys_time", "cust_id", "device_id", "tran_type", "payee_id", "dr_acct_id", "txn_amt"};
    String dropDownJson = "{\n" +
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
<h2>IB Fund Transfer Transaction</h2>
<form action="ft_ib_fundtransfer_txn_serve.jsp" method="post">
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