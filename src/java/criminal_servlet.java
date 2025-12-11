


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class criminal_servlet extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

         PreparedStatement pst=null;
         Connection con;

            String  ctp       = request.getParameter("CRIMETYPE");
            String  st        = request.getParameter("STATUS");
            String djail      = request.getParameter("DATEOFJAIL");
          
            int  pid        = Integer.parseInt(request.getParameter("menu1"));
        try {


           Class.forName("oracle.jdbc.driver.OracleDriver");
           String url = "jdbc:oracle:thin:@localhost:1521:XE";
           con = DriverManager.getConnection(url,"scott","tiger");
           pst=con.prepareStatement("insert into CRIMINAL_DTLS  values(criminal_no.nextval,?,?,?,?)");
           //pst.setInt(1);

           pst.setString(1, ctp);
           pst.setString(2, st );
           pst.setString(3, djail );
           pst.setInt(4, pid  );

         
           pst.executeUpdate();
           out.print("save");

        }  catch(Exception e)
              {
                 out.println(e);
                }
                        finally
                        {

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
    }// </editor-fold>

}
