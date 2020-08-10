<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"cardtinregen\"," +
            "\"event-name\":\"nft_cardtinregen\",\"eventtype\":\"nft\",\"msgBody\":\"{'succ_fail_flg':'F','card_no':'','rqst_chnl':''," +
            "'error_desc':'','sys_time':'','error_code':'','Online_offline':'','source':'dc','cust_id':'','host_id':'F','time_slot':''," +
            "'eventts':'','addEntity1':''}\"}";

    String[] mandatoryFields = {"sys_time", "succ_fail_flg"};
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