


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class person_entry extends HttpServlet {
   
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

         PreparedStatement pst=null;
         Connection con;

          // int  thn        = Integer.parseInt(request.getParameter("THANA"));
           String  pnm       = request.getParameter("NAME");
           String  pnnm      = request.getParameter("NICK_NAME");
           String  fnm       = request.getParameter("FATHER");
           String  mnm       = request.getParameter("MOTHER");
           String  gen       = request.getParameter("menu1");
           String  cst       = request.getParameter("CAST");
           String  db        = request.getParameter("DOB");
           String  add       = request.getParameter("ADDRESS");

           int    cont       = Integer.parseInt(request.getParameter("CONTACT"));
           String  mrk       = request.getParameter("MARK");
           String  rnm       = request.getParameter("R_NAME");
           String  fnd       = request.getParameter("FRIEND");
           int    emp       = Integer.parseInt(request.getParameter("menu2"));
           int    fir        = Integer.parseInt(request.getParameter("menu3"));
       
         
        
        try {

           Class.forName("oracle.jdbc.driver.OracleDriver");
           String url = "jdbc:oracle:thin:@localhost:1521:XE";
           con = DriverManager.getConnection(url,"scott","tiger");
           pst=con.prepareStatement("insert into PERSON_FIR_REF values(person_no.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           //pst.setInt(1);

           pst.setString(1,pnm);

           pst.setString(2, pnnm);
           pst.setString(3,fnm );
           pst.setString(4, mnm );

           pst.setString(5, gen );
           pst.setString(6,  cst  );
           pst.setString(7, db  );

           pst.setString(8,add );
           pst.setInt(9, cont);
           pst.setString(10, mrk );

           pst.setString(11, rnm );
           pst.setString(12,fnd );
           pst.setInt(13, emp);
           pst.setInt(14,fir );


            pst.executeUpdate();


      }
    catch(Exception e){

    out.println(e);
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
    }// </editor-fold>

}
