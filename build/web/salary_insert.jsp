<%-- 
    Document   : salary_insert
    Created on : Feb 8, 2011, 11:32:55 PM
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



          // String d = request.getParameter("day");=
          // String m = request.getParameter("month");
          // String y = request.getParameter("year");
           String s = request.getParameter("datum1");
          // String bnk = request.getParameter("BANK");
          String brc1 = request.getParameter("branch_id");
        //   String cit = request.getParameter("city");
           String amt1 = request.getParameter("amount");
           String num1 = request.getParameter("t1");
           int brc = Integer.parseInt(brc1.trim());
           int amt = Integer.parseInt(amt1.trim());
           int num = Integer.parseInt(num1.trim());

//out.print("s="+s+",brc1="+brc1+",amt1="+amt1+",num1="+num1);


    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    cn = DriverManager.getConnection(url,"scott","tiger");
        pst=cn.prepareStatement("insert into emp_salary  values(seq_salno.nextval,to_date(?,'dd/mm/yyyy'),?,?,?)");



pst.setString(1,s);







pst.setInt(2, amt);
pst.setInt(3, num);

pst.setInt(4, brc);
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
