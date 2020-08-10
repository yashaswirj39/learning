<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"acctinq\",\"event-name\":\"nft_acctinq\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'eventtype':'nft','eventsubtype':'acctinq','event_name':'nft_acctinq','branchid':'','empid':''," +
            "'branchiddesc':'','channel':'','source':'fin','host_id':'F','acct_id':'','avl_bal':'','user_id':'','sys_time':'','acct_name':''," +
            "'cust_id':'','menu_id':'','time_slot':'','eventts':''}\"}";

    String[] mandatoryFields = {"sys_time", "cust_id", "acct_id"};
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
<h2>Account Inquiry Event</h2>
<form action="nft_acctinq_serve.jsp" method="post">
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