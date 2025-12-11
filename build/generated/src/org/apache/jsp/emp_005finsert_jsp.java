package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class emp_005finsert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    int rl=0;
    int fee=0;
    int tha=0;

    String nm=null;
    String strm=null;
    String url=null;
    


  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("            alert(\"RECORD INSETED AT ");
      out.print( new java.util.Date() );
      out.write("\" );\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("       <table>\n");
      out.write("           <tr>\n");
      out.write("               \n");
      out.write("        ");

         try {
           String nm = request.getParameter("name") ;
           String fath = request.getParameter("father");
           String sex = request.getParameter("sex");
           String d = request.getParameter("day");
           String m = request.getParameter("month");
           String y = request.getParameter("year");
           String s =request.getParameter("datum1");
           String add = request.getParameter("Address");
           String cat = request.getParameter("category");
           String bld = request.getParameter("menu1");
           String mar = request.getParameter("married");
           String edu = request.getParameter("education");
           String cont = request.getParameter("contact");
           String d1 = request.getParameter("day1");
           String m1 = request.getParameter("month1");
           String y1 = request.getParameter("year1");
           String s1 = request.getParameter("datjn");
           int tha = Integer.parseInt(request.getParameter("menu_thana"));
           int po = Integer.parseInt(request.getParameter("post_id"));
           int dpt = Integer.parseInt(request.getParameter("dept_id"));






    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
        pst=cn.prepareStatement("insert into emp_info  values(seq_empid.nextval,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,?,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,?)");
pst.setString(1, nm);
pst.setString(2,fath);
pst.setString(3, sex);
pst.setString(4,s);
pst.setString(5, add);
pst.setString(6, cat);
pst.setString(7, bld);
pst.setString(8, mar);
pst.setString(9, edu);
pst.setString(10, cont);
pst.setString(11, s1);
pst.setInt(12, tha);

pst.setInt(13,dpt);
pst.setInt(14, po);

pst.executeUpdate();





    }
    catch(Exception e){

    out.println(e);
    }
        finally {
            out.close();
        }


        
      out.write("\n");
      out.write("\n");
      out.write("         ");
      out.print( new java.util.Date() );
      out.write("\n");
      out.write("        </tr>\n");
      out.write("       </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
