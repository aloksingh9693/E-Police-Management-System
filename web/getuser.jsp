<%@ page import="java.sql.*"%>
<%!
    Connection con=null;
    PreparedStatement st=null;
    ResultSet rs=null;
    int rl;
    String url;
%>
<%
    String std=request.getParameter("std_id");


        try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
     url = "jdbc:oracle:thin:@localhost:1521:XE";
    con = DriverManager.getConnection(url,"scott","tiger");
         st=con.prepareStatement("select * from department where dept_name=?");
         st.setString(1,std);
      rs=st.executeQuery();
	  if(rs.next())
	  {

rl = rs.getInt(1);




	  }}
	  catch(Exception e){}



    out.println(rl);
%>