<%--
    Document   : getuser1
    Created on : Feb 20, 2011, 6:36:12 PM
    Author     : himanshu jha
--%>

<%@ page import="java.sql.*"%>
<%!    Connection con;
    PreparedStatement st;
    PreparedStatement sta;
    PreparedStatement sta1;
    ResultSet rs;
    ResultSet rs1;
    ResultSet rs2;
    int rl;
    int i;
    int j;
    String data1 = "";
      String data7 = "";
%>
<%
try{
  int std_id =602;//Integer.parseInt(request.getParameter("std_id"));
              
          


            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");            
            st = con.prepareStatement("select * from HISTORYSHEETER_DTLS where HISTORYSHEETER_ID=?" );
            st.setInt(1,std_id);
            rs = st.executeQuery();
            if (rs.next()) {
                data1 = rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getInt(5)+":"+rs.getString(6)+":"+rs.getString(7)+":"+rs.getString(8)+":"+rs.getString(9)+":"+rs.getString(10)+":"+rs.getString(11)+":"+rs.getString(12)+":"+rs.getString(13)+":"+rs.getString(15)+":"+rs.getString(17);
           i=rs.getInt(14);
          //out.print("p_id="+i);
           j=rs.getInt(16);
            }
            sta = con.prepareStatement("select * from PROPERTY_DELS where PROPERTY_ID=?" );
            sta.setInt(1,i);
            rs1 = sta.executeQuery();
           if(rs1.next())
                {
                data1=data1+":"+rs1.getObject(1)+":"+rs1.getObject(2)+":"+rs1.getObject(3)+":"+rs1.getObject(4)+":"+rs1.getObject(5)+":"+rs1.getObject(6)+":"+rs1.getObject(7)+":"+rs1.getObject(8);
                }
           sta1 = con.prepareStatement("select * from RELATION_DTLS where RELATION_ID=?" );
            sta1.setInt(1,j);
           rs2 = sta1.executeQuery();
            if(rs2.next())
               {
               data1=data1+":"+rs2.getObject(1)+":"+rs2.getObject(2)+":"+rs2.getObject(3)+":"+rs2.getObject(4)+":"+rs2.getObject(5);
               }
            out.println(data1);
            }catch(Exception e){
                out.print(e);
                }
%>