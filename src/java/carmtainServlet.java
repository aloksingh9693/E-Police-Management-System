


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class carmtainServlet extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pst;
        Connection con;
        String sdate1=request.getParameter("datum1");
        String dname=request.getParameter("t1");
        String rdetail=request.getParameter("t2");
        String vno=request.getParameter("t3");
       int thid=Integer.parseInt(request.getParameter("t4"));
          int rp=Integer.parseInt(request.getParameter("t5"));
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("insert into carmaintain values(seq_sid.nextval,to_date(?,'dd/mm/yyyy'),?,?,?,?,?)");
             pst.setString(1, sdate1);
             pst.setString(2, dname);
             pst.setString(3, vno);
             pst.setInt(4, rp);
             pst.setString(5, rdetail);
             pst.setInt(6, thid);
             pst.executeUpdate();



        }catch(Exception e)
        {
            out.print(e);
        }
        finally {
           
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
