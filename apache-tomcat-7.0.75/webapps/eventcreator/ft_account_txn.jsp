<%@ page import="com.clari5.EventJsonUtil" %><%--
  Created by IntelliJ IDEA.
  User: sanat
  Date: 24/8/17
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String jsonEvent = "{\"event_id\":\"\",\"keys\":\"\",\"host_user_id\":\"\",\"eventsubtype\":\"accounttxn\"," +
            "\"event-name\":\"ft_accounttxn\",\"eventtype\":\"ft\",\"source\":\"fin\",\"msgBody\":\"{'eventtype':'ft'," +
            "'eventsubtype':'accounttxn','event_name':'ft_accounttxn','mode_oprn_code':'','home_br_city_code':''," +
            "'requested_amt':'','bin':'','fee':'','channel':'','un_clr_bal_amt':'','tran_category':'','payee_id':'','branch_id_desc':''," +
            "'dev_owner_id':'','payee_code':''," +
            "'avl_bal':'','desti_br':'','acctopendate':'','reservedfield1':'','stlmnt_crncy':'','cust_const':''," +
            "'mcc_code':'','bus_date':'','acq_bank_code':'','sys_datetime':'','acct_crncy':'','time_slot':'','entry_user':''," +
            "'device_id':'','acct_ownership':'','sol_id':'','billingcrncy':'','reservedfield2':'','reservedfield3':'','ref_tran_amt':''," +
            "'version':'','schm_type':'','dcc_id':'','country_code':'','instrmnt_type':'','card_acceptor_name':'','qualifier':'','vendor_id':''," +
            "'resp_code':'','stlmnt_amt':'','acct_bal':'','dev_type':'','cust_id':'','clr_bal_amt':'','status':'','sys_date':'','pstd_date':''," +
            "'pstd_user_id':'','cr_sol_id':'','eff_avl_bal':'','pstd_flg':'','city':'','txn_br_city_code':'','tran_id':'','ref_tran_crncy':''," +
            "'tran_sub_type':'','online_batch':'','schm_code':'','part_tran_type':'','rate':'','branch_id':'','billingamt':'','sys_time':''," +
            "'consumer_num':'','acct_name':'','tran_rmks':'','acct_sol_id':'','tran_date':'','bank_code':'','acct_occp_code':'','tran_type':''," +
            "'stlmnt_fee':'','place_holder':'','br_code':'','ip_address':'','originatorcrncy':'','serial_num':'','host_id':'F','tran_particular':''," +
            "'command':'','ref_num':'','cust_card_id':'','account_id':'','part_tran_srl_num':'','hdrmkrs':'','dc_id':'','tran_amt':''," +
            "'tran_crncy_code':'','instrmnt_num':'','cr_bank_code':'','p_id':'','value_date':'','emp_id':'','eventts':''}\"}";

    String[] mandatoryFields = {"sys_time", "cust_id", "acct_ownership", "account_id", "part_tran_type", "tran_type", "tran_sub_type", "tran_date", "value_date", "tran_amt"};
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
<h2>FT Account Transaction</h2>
<form action="ft_account_txn_serve.jsp" method="post">
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