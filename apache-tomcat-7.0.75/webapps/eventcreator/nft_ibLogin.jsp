<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"iblogin\",\"event-name\":\"nft_ibLogin\"," +
            "\"eventtype\":\"nft\",\"msgBody\":\"{'addr_network':'','device_id':'','lastLogints':'','loginstatus':'','device_type':''," +
            "'source':'ib','host_id':'F','logints':'','succ_fail_flg':'','user_id':'','error_desc':'','last_login_ip':'','sys_time':''," +
            "'error_code':'','cust_id':'','time_slot':'','eventts':'','cntry_code':'001'}\"}";

    String[] mandatoryFields = {"sys_time", "addr_network", "logints", "user_id", "cust_id"};
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
<h2>IB Login Event</h2>
<form action="nft_ibLogin_serve.jsp" method="post">
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