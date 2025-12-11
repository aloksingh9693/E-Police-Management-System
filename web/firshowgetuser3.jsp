<%-- 
    Document   : firshowgetuser3
    Created on : Feb 23, 2011, 12:53:23 PM
    Author     : ANOOP
--%>

<%@ page import="java.sql.*"%>
<%!
    Connection con=null;
    PreparedStatement st=null;
    ResultSet rs=null;
    Connection con1=null;
    PreparedStatement st1=null;
     PreparedStatement sta2=null;
    ResultSet rs1=null;
ResultSet rs2=null;
    int rl;
%>
<%
    int dist =Integer.parseInt(request.getParameter("std_id"));

    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    String data ="";

   
      sta2 = con.prepareStatement("select * from fir_dtls where FIR_ID=?" );
         sta2.setInt(1, dist);
           rs2 = sta2.executeQuery();
            if(rs2.next())

               {
                    data =rs2.getObject(2)+":"+rs2.getObject(3)+":"+rs2.getObject(4)+":"+rs2.getObject(5)+":"+rs2.getObject(6)+":"+rs2.getObject(7)+":"+rs2.getObject(8)+":"+rs2.getObject(9)+":"+rs2.getObject(10)+":"+rs2.getObject(11)+":"+rs2.getObject(12)+":"+rs2.getObject(13)+":"+rs2.getObject(14)+":"+rs2.getObject(15)+":"+rs2.getObject(16)+":"+rs2.getObject(17)+":"+rs2.getObject(18)+":"+rs2.getObject(19)+":"+rs2.getObject(20)+":"+rs2.getObject(21)+":"+rs2.getObject(22)+":"+rs2.getObject(23)+":"+rs2.getObject(24)+":"+rs2.getObject(25)+":"+rs2.getObject(26)+":"+rs2.getObject(27)+":"+rs2.getObject(28)+":"+rs2.getObject(29)+":"+rs2.getObject(30)+":"+rs2.getObject(31)+":"+rs2.getObject(32);
               }
    out.println(data);
%>
