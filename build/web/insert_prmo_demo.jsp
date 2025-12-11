<%-- 
    Document   : insert_prmo_demo
    Created on : Feb 22, 2011, 2:50:43 PM
    Author     : anshuman
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%!
Connection cn=null;
    PreparedStatement pst=null;
    ResultSet rs=null;
    int sid=0;
    String dat = null;
    String cp,np,tha,eid;//=0;
//int np=0;
//int tha=0;
//int eid=0;


%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script language="javascript">
            alert("RECORD INSETED AT <%= new java.util.Date() %>" );
        </script>

       <table>
           <tr>

        <%
         try {
           sid = Integer.parseInt(request.getParameter("menu_status"));
           dat = request.getParameter("datum1");
           cp = request.getParameter("menu_cpost");
           np = request.getParameter("menu_npost");
           tha = request.getParameter("menu_thana");
             eid = request.getParameter("menu_name");
             int cp1=Integer.parseInt(cp.trim());
             int np1=Integer.parseInt(np.trim());
             int tha1=Integer.parseInt(tha.trim());
             int eid1=Integer.parseInt(eid.trim());
           //  out.print("sid="+sid+" dat="+dat+" cp="+cp1+" np="+np1+" tha="+tha1+" eid="+eid1);
         Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
   cn = DriverManager.getConnection(url,"scott","tiger");
        pst=cn.prepareStatement("insert into emp_prmo_demo  values(seq_emp_pro.nextval,?,to_date(?,'dd-mm-yyyy'),?,?,?,?)");
pst.setInt(1, sid);
pst.setString(2, dat);
pst.setInt(3, cp1);
pst.setInt(4, np1);
pst.setInt(5, tha1);
pst.setInt(6, eid1);
int i=pst.executeUpdate();






    }
    catch(Exception e){

    out.println(e);
    } finally {
            out.close();
        }


        %>

         <%= new java.util.Date() %>
        </tr>
       </table>

    </body>
</html>
