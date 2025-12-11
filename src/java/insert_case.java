
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class insert_case  extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         PreparedStatement pst=null;
          Connection con;

           int  firid        = Integer.parseInt(request.getParameter("menu1"));
           int  empid        = Integer.parseInt(request.getParameter("menu2"));
            String ast        = request.getParameter("ASSEST_DETAIL");
            String rpt        = request.getParameter("FINALREPORT");


        try {
                  Class.forName("oracle.jdbc.driver.OracleDriver");
           String url = "jdbc:oracle:thin:@localhost:1521:XE";
           con = DriverManager.getConnection(url,"scott","tiger");
           pst=con.prepareStatement("insert into CASE_DTLS  values(caseno.nextval,?,?,?,?)");
           //pst.setInt(1);

           pst.setInt(1,firid );
           pst.setInt(2, empid);
           pst.setString(3,ast);
           pst.setString(4, rpt);
           pst.executeUpdate();

        }  catch(Exception e)
              {
                 out.println(e);
                }
                        finally
                        {

                        }
             }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
