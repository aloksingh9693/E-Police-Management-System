<%@ page import="java.sql.*"%>
<%!
    Connection con=null;
    PreparedStatement st=null;
    ResultSet rs=null;
   
    String url;
%>
<%
    int std=Integer.parseInt(request.getParameter("std_id"));

 String rl="";
        try
                  {
               Class.forName("oracle.jdbc.driver.OracleDriver");
     url = "jdbc:oracle:thin:@localhost:1521:XE";
    con = DriverManager.getConnection(url,"scott","tiger");
         st=con.prepareStatement("select * from thana where dis_id=?");
         st.setInt(1,std);
      rs=st.executeQuery();
      rl="select*select";
	  while(rs.next())
	  {

rl = rl+":"+rs.getInt(1)+"*"+rs.getString(2);

	  }}
	  catch(Exception e){}



    out.println(rl);
%>