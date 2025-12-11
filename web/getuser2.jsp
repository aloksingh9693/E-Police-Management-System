<%--
    Document   : getuser1
    Created on : Feb 20, 2011, 6:36:12 PM
    Author     : himanshu jha
--%>

<%@ page import="java.sql.*"%>
<%!    Connection con;
    PreparedStatement st;
    PreparedStatement sta;
    ResultSet rs;
    ResultSet rs1;
    int rl;
      String data7 = "";
%>
<%
  int std_id =Integer.parseInt(request.getParameter("std_id"));
              String data1 = "";
           // String data2 = "";
           // String data3 = "";
           // String data4 = "";
           // String data5 = "";
           // String data6 = "";
          


            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            sta = con.prepareStatement("select to_char(entry_date) from FIR_DTLS where FIR_ID=?" );
             sta.setInt(1,std_id);
            rs1 = sta.executeQuery();
            while (rs1.next()) {
                data7=rs1.getString(1);
                }
            st = con.prepareStatement("select * from FIR_DTLS where FIR_ID=?" );
            st.setInt(1,std_id);
            rs = st.executeQuery();
            while (rs.next()) {
                data1 = rs.getInt(1)+":"+rs.getInt(2)+":"+data7+":"+rs.getString(4)+":"+rs.getString(5)+":"+rs.getString(6)+":"+rs.getString(7)+":"+rs.getString(8)+":"+rs.getString(9)+":"+rs.getString(10)+":"+rs.getString(11)+":"+rs.getString(12)+":"+rs.getString(13)+":"+rs.getString(14)+":"+rs.getString(15)+":"+rs.getString(16)+":"+rs.getString(17)+":"+rs.getString(18)+":"+rs.getString(19)+":"+rs.getInt(20)+":"+rs.getString(21)+":"+rs.getString(22)+":"+rs.getString(23)+":"+rs.getString(24)+":"+rs.getString(25)+":"+rs.getString(26)+":"+rs.getString(27)+":"+rs.getString(28)+":"+rs.getString(29)+":"+rs.getString(30)+":"+rs.getString(31)+":"+rs.getString(32);
               // data2 = rs.getString(3);
              //  data3 = rs.getString(4);
                //data4 = rs.getString(5);
                //data5 = rs.getString(6);
               // data6 = rs.getString(7);
               // data7 = rs.getString(8);

            }
            out.println(data1);
%>