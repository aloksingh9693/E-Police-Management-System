/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class firnewservlet extends HttpServlet {
   
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         PreparedStatement pst=null;
        Connection con;
           //int dist=Integer.parseInt(request.getParameter("DISTRICT"));
           int  thn        = Integer.parseInt(request.getParameter("THANA"));
           String e_date     = request.getParameter("ENTRY_DATE");
           String act        = request.getParameter("ACT");
           String rjn        = request.getParameter("RJ_NO");
           String crm_date   = request.getParameter("CRIME_DATE");
           String crm_day    = request.getParameter("CRIME_DAY");
           String rcv_date   = request.getParameter("RECIEVE_DATE");
           String crm_time   = request.getParameter("CRIME_TIME");
           String get_time   = request.getParameter("GETINFO_TIME");
           String typ_inf    = request.getParameter("TYPE_INFO");
           String crm_plc    = request.getParameter("CRIME_PLACE");
           String bno        = request.getParameter("BEETNO");
           String direction  = request.getParameter("DIRECTION");
           String distanc    = request.getParameter("DISTANCE");
           String inf_name   = request.getParameter("INFORMER_NAME");
           String inf_fname  = request.getParameter("INFORMER_FNAME");
           String inf_dob    = request.getParameter("DOB");
           String inf_nation = request.getParameter("NATIONALITY");
           int inf_pass   = Integer.parseInt(request.getParameter("PASPORTNO"));
           String iss_date   = request.getParameter("ISSUE_DATE");
           String iss_plc    = request.getParameter("ISSUE_PLACE");
           String inf_occu   = request.getParameter("OCCUPATION");
           String inf_add    = request.getParameter("INFORMER_ADDRESS");
           String crm_nm     = request.getParameter("CRIMINAL_NAME");
           String crm_fnm    = request.getParameter("CRIMINAL_FNAME");
           String crm_add    = request.getParameter("CRIMINAL_ADDRESS");
           String crm_cast   = request.getParameter("CRIMINAL_CAST");
           String res_delay  = request.getParameter("REASION_DELAY");
           String ass_prc    = request.getParameter("ASSEST_PRICE");
           String ass_dtl    = request.getParameter("ASSEST_DETAIL");
           String fst_info   = request.getParameter("FIRST_INFO_DETAIL");
out.print("hi");
           //int dpt = Integer.parseInt(request.getParameter("dept_id"));
try
{
           Class.forName("oracle.jdbc.driver.OracleDriver");
           String url = "jdbc:oracle:thin:@localhost:1521:XE";
           con = DriverManager.getConnection(url,"scott","tiger");
           pst=con.prepareStatement("insert into fir_dtls  values(fir_num.nextval,?,to_date(?,'dd/mm/yyyy'),?,?,to_date(?,'dd/mm/yyyy'),?,to_date(?,'dd/mm/yyyy'),?,?,?,?,?,?,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,to_date(?,'dd/mm/yyyy'),?,?,?,?,?,?,?,?,?,?,?)");
           //pst.setInt(1);

           pst.setInt(1,thn);

           pst.setString(2, e_date);
           pst.setString(3,act);
           pst.setString(4, rjn);

           pst.setString(5, crm_date );
           pst.setString(6, crm_day );
           pst.setString(7, rcv_date );

           pst.setString(8, crm_time);
           pst.setString(9, get_time);
           pst.setString(10, typ_inf);

           pst.setString(11, crm_plc);
           pst.setString(12,bno);
           pst.setString(13, direction);
           pst.setString(14,distanc);
           pst.setString(15,inf_name );
           pst.setString(16,inf_fname);

           pst.setString(17, inf_dob);
           pst.setString(18,inf_nation);
           pst.setInt(19,inf_pass);
           pst.setString(20,iss_date );
           pst.setString(21,iss_plc );
           pst.setString(22,inf_occu);
           pst.setString(23,inf_add );
           pst.setString(24, crm_nm );
           pst.setString(25,crm_fnm);
           pst.setString(26,crm_add  );
           pst.setString(27,crm_cast);
           pst.setString(28,res_delay);
           pst.setString(29,ass_prc );

           pst.setString(30, ass_dtl);
           pst.setString(31,fst_info);




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
