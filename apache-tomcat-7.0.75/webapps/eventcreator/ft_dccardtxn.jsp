<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"keys\":\"\",\"eventsubtype\":\"dccardtxn\",\"event-name\":\"ft_dccardtxn\",\"eventtype\":\"ft\"," +
            "\"msgBody\":\"{'eventsubtype':'dccardtxn','event_name':'ft_dccardtxn','eventtype':'ft','txn_reference_no':'','channel':''," +
            "'source':'dc','mcc':'','avl_bal':'','card_no':'','proc_code':'','sys_time':'','acq_inst_id_code':'','txn_amt':'','addr_network':''," +
            "'tran_type':'','acq_inst_cntry':'','txn_crncy_code':'','host_id':'F','txn_date':'','event_id':'','acq_inst_city':'','domestic_int_flg':'','card_type_flg':'','resp_code':'','acct_no':'','msg_type':'','acq_inst_addr':'','cust_id':'','eventts':''}\"}";

    String[] mandatoryFields = {"sys_time", "card_no", "txn_amt"};
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
<h2>Debit Card Transaction Event</h2>
<form action="ft_dccardtxn_serve.jsp" method="post">
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