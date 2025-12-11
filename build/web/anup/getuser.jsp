<%@ page import="java.sql.*"%>
<%!
    Connection con;
    PreparedStatement st;
    ResultSet rs;
    int rl;
%>
<%
    int std_id = Integer.parseInt(request.getParameter("std_id"));
    String data ="";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    con=DriverManager.getConnection(url,"scott","tiger");
    st=con.prepareStatement("select * from emp_info where emp_id="+std_id);
    rs=st.executeQuery();
    while(rs.next())
    {
        data =  rs.getString(2);
    }
    out.println(data);
%>