/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.75
 * Generated at: 2019-03-17 14:54:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.clari5.EventJsonUtil;

public final class ft_005faccount_005ftxn_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');

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

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Event Creator</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<h2>FT Account Transaction</h2>\n");
      out.write("<form action=\"ft_account_txn_serve.jsp\" method=\"post\">\n");
      out.write("    <table>\n");
      out.write("        <tbody id=\"idform\">\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("        <tbody>\n");
      out.write("        <tr>\n");
      out.write("            <td><input type=\"submit\" value=\"Submit\"/></td>\n");
      out.write("            <td></td>\n");
      out.write("        </tr>\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("<script>\n");
      out.write("    var headerHtml = \"\";\n");
      out.write("    var bodyHtml = \"\";\n");
      out.write("    headerHtml = \"");
      out.print(eventJsonUtil.getHeaderHtml() );
      out.write("\";\n");
      out.write("    bodyHtml = \"");
      out.print(eventJsonUtil.getMsgBodyHtml() );
      out.write("\";\n");
      out.write("    document.getElementById(\"idform\").innerHTML = bodyHtml + headerHtml;\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
