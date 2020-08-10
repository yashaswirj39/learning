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
            "'stlmnt_fee':'','place_holder':'','br_code':'','ip_address':'','originatorcrncy':'','serial_num':'','host_id':'','tran_particular':''," +
            "'command':'','ref_num':'','cust_card_id':'','account_id':'','part_tran_srl_num':'','hdrmkrs':'','dc_id':'','tran_amt':''," +
            "'tran_crncy_code':'','instrmnt_num':'','cr_bank_code':'','p_id':'','value_date':'','emp_id':'','eventts':''}\"}";

    new EventJsonUtil(h, jsonEvent).generateEvent(request);
    response.sendRedirect("index.jsp");
%>