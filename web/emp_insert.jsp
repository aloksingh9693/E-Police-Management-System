<%-- 
    Document   : emp_insert
    Created on : Feb 8, 2011, 10:28:34 AM
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
    int tha=0;

    String nm=null;
    String strm=null;
    String url=null;
    

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


        %>

         <%= new java.util.Date() %>
        </tr>
       </table>
    </body>
</html>
