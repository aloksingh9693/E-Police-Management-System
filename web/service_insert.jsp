<%-- 
    Document   : service_insert
    Created on : Feb 8, 2011, 5:19:21 PM
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
    int rl=0;
    int fee=0;
    String nm=null;
    String strm=null;
    String url=null;
    String dpt = null;

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



        //   String d = request.getParameter("day");
         //  String m = request.getParameter("month");
         //  String y = request.getParameter("year");
           String s = request.getParameter("datum1");






         //  String d1 = request.getParameter("day1");
         //  String m1 = request.getParameter("month1");
         //  String y1 = request.getParameter("year1");
           String s1 = request.getParameter("datdis");
           int pl = Integer.parseInt(request.getParameter("post_id"));
          // String ds = request.getParameter("DISTRICT");
          // String ci = request.getParameter("city");
           int th = Integer.parseInt(request.getParameter("menu_thana"));
           int num = Integer.parseInt(request.getParameter("t1"));





    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
         pst=cn.prepareStatement("insert into emp_service  values(seq_sid.nextval,to_date(?,'dd/mm/yyyy'),to_date(?,'dd/mm/yyyy'),?,?,?)");



pst.setString(1,s);





pst.setString(2, s1);


pst.setInt(3, num);
pst.setInt(4, pl);
pst.setInt(5, th);
pst.executeUpdate();





    }
    catch(Exception e){

    out.println(e);
    }
        finally {
            out.close();
        }


        %>

         <%= new java.util.Date() %>
        </tr>
       </table>
    </body>
</html>
