<%--
    Document   : getuser1
    Created on : Feb 20, 2011, 6:36:12 PM
    Author     : Gaurav
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
           /* sta = con.prepareStatement("select to_char(SRNT_ID) from SERVANT_INFO where SRNT_ID=?" );
             sta.setInt(1,std_id);
            rs1 = sta.executeQuery();
            while (rs1.next()) {
                data7=rs1.getString(1);
                }*/
            st = con.prepareStatement("select * from SERVANT_INFO where SRNT_ID=?" );
            st.setInt(1,std_id);
            rs = st.executeQuery();
            while (rs.next()) {
                data1 = rs.getInt(1)+":"+rs.getInt(2)+":"+rs.getObject(3)+":"+rs.getObject(4)+":"+rs.getObject(5)+":"+rs.getObject(6)+":"+rs.getObject(7)+":"+rs.getObject(8)+":"+rs.getObject(9)+":"+rs.getObject(10)+":"+rs.getObject(11)+":"+rs.getObject(12)+":"+rs.getObject(13)+":"+rs.getObject(14)+":"+rs.getObject(15)+":"+rs.getObject(16)+":"+rs.getObject(17)+":"+rs.getObject(18)+":"+rs.getObject(19)+":"+rs.getObject(20)+":"+rs.getObject(21)+":"+rs.getObject(22)+":"+rs.getObject(23)+":"+rs.getObject(24)+":"+rs.getObject(25)+":"+rs.getObject(26)+":"+rs.getObject(27)+":"+rs.getObject(28)+":"+rs.getObject(29)+":"+rs.getObject(30)+":"+rs.getObject(31)+":"+rs.getObject(32)+":"+rs.getObject(33)+":"+rs.getObject(34)+":"+rs.getObject(35);
            }
             sta = con.prepareStatement("select * from SERVANT_RELATION where SRNT_ID=?" );
            sta.setInt(1,std_id);
            rs1 = sta.executeQuery();
            while(rs1.next()) {
                data1=data1+":"+rs1.getObject(2)+":"+rs1.getObject(3)+":"+rs1.getObject(4);
                }

            out.println(data1);
%>