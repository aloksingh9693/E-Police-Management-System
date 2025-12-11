<%@ page import="java.sql.*"%>
<%!
    Connection con=null;
    PreparedStatement st=null;
    ResultSet rs=null;
    String rl;
    String url;
%>
<%
    int std=Integer.parseInt(request.getParameter("std_id"));
rl="";

        try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
     url = "jdbc:oracle:thin:@localhost:1521:XE";
    con = DriverManager.getConnection(url,"scott","tiger");
         st=con.prepareStatement("Select name from emp_info where emp_id=?");
         st.setInt(1,std);
      rs=st.executeQuery();
	  if(rs.next())
	  {

rl = rs.getString(1);




	  }}
	  catch(Exception e){}



    out.println(rl);
%>