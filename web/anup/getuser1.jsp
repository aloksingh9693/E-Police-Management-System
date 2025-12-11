<%-- 
    Document   : getuser1
    Created on : Feb 20, 2011, 6:36:12 PM
    Author     : himanshu jha
--%>

<%@ page import="java.sql.*"%>
<%!    Connection con;
    PreparedStatement st;
    ResultSet rs;
    int rl;
%>
<%
  String std_id =request.getParameter("std_id");
              String data1 = "";
           // String data2 = "";
           // String data3 = "";
           // String data4 = "";
           // String data5 = "";
           // String data6 = "";
           // String data7 = "";


            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            st = con.prepareStatement("select * from carinfo where ddate=?" );
            st.setString(1,std_id);
            rs = st.executeQuery();
            while (rs.next()) {
                data1 = rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getInt(5)+":"+rs.getInt(6)+":"+rs.getString(7)+":"+rs.getString(8);
               // data2 = rs.getString(3);
              //  data3 = rs.getString(4);
                //data4 = rs.getString(5);
                //data5 = rs.getString(6);
               // data6 = rs.getString(7);
               // data7 = rs.getString(8);

            }
            out.println(data1);
%>