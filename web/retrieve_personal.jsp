<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%!
    Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    int rl=0;
    String fees=null;
    String nm=null;
    String strm=null;
    String url=null;
    String dob=null;
    String add=null;
    String cat = null;
    String bg =null;
    String edu = null;
    String cont = null;
    String jd =null;
    String jp= null;
    String jpo = null;
    String mr = null;
    String dpt = null;
    String dd = null;
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Employee Record</title>

</head>
<center><p><b><u><font size="18" color="blue">EMPLOYEE PERSONAL RECORD</font></u></b></p></center><br/><br/>
<body>
<table border=0 align="center" bgcolor="#ffccff" width="100%">
            <tr>
                
                <th>NAME</th>
                <th>FATHER</th>
                
                <th>DOB</th>
                <th>CATEGORY</th>
                <th>JOINING DATE</th>
                <th>DEPARTMENT</th>
                <th>POST</th>
                
                
            </tr>
            <%
            try
            {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            url="jdbc:oracle:thin:@localhost:1521:XE";
            con=DriverManager.getConnection(url,"scott","tiger");



          ps=con.prepareStatement("select name,father,to_char(dob),category,to_char(j_date),dept_name,post_name  from emp_info,department,post where emp_info.dept_id= department.dept_id and emp_info.post_id = post.post_id");
          





            rs=ps.executeQuery();

           while( rs.next()){
         //   rl = rs.getInt(1);
           
            strm=rs.getString(1);
           // fees=rs.getString(4);
            dob = rs.getString(2);
           
            add = rs.getString(3);
           cat = rs.getString(4);
           bg = rs.getString(5);
            mr = rs.getString(6);
           edu = rs.getString(7);
          //  cont = rs.getString(11);
           
           // jp = rs.getString(13);
          //  jpo = rs.getString(14);




            %>
            <tr align="center">
              
                
                <td><%= strm %></td>
             
                <td><%= dob %></td>
                <td><%= add %></td>
                   <td><%= cat %></td>
                 <td><%= bg %></td>
                 <td><%= mr %></td>
               <td><%= edu %></td>
             
             
             
            
                
              
             
            </tr>
            <%
                 }
            %>
        </table>
         <%
        ps.close();
        con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
</body>
</html>
