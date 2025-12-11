

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Exception;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import sun.security.krb5.internal.i;

public class hist_entry extends HttpServlet {
   
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        PreparedStatement pst=null;
        PreparedStatement pst1=null;
        PreparedStatement pst2=null;
        PreparedStatement pst3=null;
        PreparedStatement pst4=null;
        Connection con;

           String  home         = request.getParameter("HOME");
           String  rg1          = request.getParameter("REG_NO1");
           String  area         = request.getParameter("AREA");
           String  lnd          = request.getParameter("LAND");
           String  rg2          = request.getParameter("REG_NO2");
           int  bac             = Integer.parseInt(request.getParameter("BANK_AC"));
           String  bnk          = request.getParameter("BANK");


              
           String  hwname        = request.getParameter("WH_NAME");
           String  bplace        = request.getParameter("BIRTHPLACE");
           String  edu           = request.getParameter("EDUCATION");
           int     cid           = Integer.parseInt(request.getParameter("menu1"));
           String  bgp           = request.getParameter("menu2");
           String  carea         = request.getParameter("C_AREA");
           String  occu          = request.getParameter("occupation");
           String  hg            = request.getParameter("HEIGHT");
           String  wg            = request.getParameter("WEIGHT");
           String  hair          = request.getParameter("HAIR");
           String  eye           = request.getParameter("EYE");
           String  skin          = request.getParameter("SKIN");
           String  hand          = request.getParameter("menu3");
           String  or            = request.getParameter("OTHER");


           String  rnm           = request.getParameter("R_NAME");
           String  rel           = request.getParameter("RELATION");
           String  rcon          = request.getParameter("R_CON");
           String  radd          = request.getParameter("R_ADD");

           int s=0;
          int a=0;





        try {
             Class.forName("oracle.jdbc.driver.OracleDriver");
             String url = "jdbc:oracle:thin:@localhost:1521:XE";
             con = DriverManager.getConnection(url,"scott","tiger");

             pst=con.prepareStatement("insert into PROPERTY_DELS values(prop_no.nextval,?,?,?,?,?,?,?)");

           pst.setString(1,home );
           pst.setString(2,rg1  );
           pst.setString(3,area );
           pst.setString(4,lnd );
           pst.setString(5,rg2  );
           pst.setInt(6,bac );
           pst.setString(7,bnk );

              pst.executeUpdate();

     
             pst1=con.prepareStatement("select * from PROPERTY_DELS ");

           ResultSet rs;
           rs=pst1.executeQuery();
            while(rs.next())
            {
             s=rs.getInt(1);
            }
       
           pst2=con.prepareStatement("insert into RELATION_DTLS  values(relation_no.nextval,?,?,?,?)");

           pst2.setString(1,rnm );
           pst2.setString(2,rel);
           pst2.setString(3,rcon);
           pst2.setString(4,radd);
           pst2.executeUpdate();
           pst3=con.prepareStatement("select RELATION_ID from RELATION_DTLS");

 ResultSet rs1;
  rs1=pst3.executeQuery();
            while(rs1.next())
            {
             a=rs1.getInt(1);
            }
           pst4=con.prepareStatement("insert into HISTORYSHEETER_DTLS  values(hist_no.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

           pst4.setString(1,hwname );
           pst4.setString(2, bplace );
           pst4.setString(3,edu );
           pst4.setInt(4, cid );
           pst4.setString(5, bgp );
           pst4.setString(6, carea );
           pst4.setString(7,  occu );
           pst4.setString(8, hg );
           pst4.setString(9, wg);
           pst4.setString(10, hair );
           pst4.setString(11, eye );
           pst4.setString(12,skin);
           pst4.setInt(13,s);
           pst4.setString(14, hand );
           pst4.setInt(15,a);
           pst4.setString(16,or);


pst4.executeUpdate();








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
