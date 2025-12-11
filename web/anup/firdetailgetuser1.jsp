<%-- 
    Document   : vehicledetailgetuser1
    Created on : Feb 23, 2011, 9:57:01 AM
    Author     : TFP
--%>

<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    Connection con1;
    PreparedStatement st1;
     PreparedStatement sta2;
    ResultSet rs1;
    ResultSet rs2;
     String data1 = "";

    int rl;
%>
<%
    int dist =Integer.parseInt(request.getParameter("std_id"));
    String data ="select*select";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from twowheeler where thanaid=?");
     st.setInt(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
    data = data + ":" + rs.getString(1)+"*"+rs.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }
    data=data+"_"+"select*select";
    st1=con.prepareStatement("select * from fourwheeler where thanaid=?");
     st1.setInt(1, dist);
    rs1=st1.executeQuery();
    while(rs1.next())
    {
    data = data + ":" + rs1.getString(1)+"*"+rs1.getString(1);//+"*"+rs.getInt(2);
       // data =  rs.getString(1);
    }

   

   sta2 = con.prepareStatement("select * from FIR_DTLS where FIR_ID=?" );
           
           rs2 = sta2.executeQuery();
            while(rs2.next())

               {  
                    data1 = rs2.getObject(1)+":"+rs2.getObject(2)+":"+rs2.getObject(2)+":"+rs2.getObject(4)+":"+rs2.getObject(5)+":"+rs2.getObject(6)+":"+rs2.getObject(7)+":"+rs2.getObject(8)+":"+rs2.getObject(9)+":"+rs2.getObject(10)+":"+rs2.getObject(11)+":"+rs2.getObject(12)+":"+rs2.getObject(13)+":"+rs2.getObject(14)+":"+rs2.getObject(15)+":"+rs2.getObject(16)+":"+rs2.getObject(17)+":"+rs2.getObject(18)+":"+rs2.getObject(19)+":"+rs2.getObject(20)+":"+rs2.getObject(21)+":"+rs2.getObject(22)+":"+rs.getObject(23)+":"+rs2.getObject(24)+":"+rs2.getObject(25)+":"+rs2.getObject(26)+":"+rs2.getObject(27)+":"+rs2.getObject(28)+":"+rs2.getObject(29)+":"+rs2.getObject(30)+":"+rs2.getObject(31)+":"+rs2.getObject(32);
               }
            out.println(data1);
%>