<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    int rl;
%>
<%
    String dist =request.getParameter("std_id");
    String data ="select";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from fir1 where district=?");
    st.setString(1, dist);
    rs=st.executeQuery();
    while(rs.next())
    {
        data = data + ":" + rs.getString(3);
    }
    out.println(data);
%>