
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class vehiclechkservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pst;
        Connection con;

        ServletContext c = getServletContext();
        Object obj = c.getAttribute("tt1");
        String ven = obj.toString();
        //out.print(ven);
        ServletContext c1 = getServletContext();
        Object obj1 = c1.getAttribute("tt2");
        String vetp = obj1.toString();
        //String vetp = request.getParameter("menu1");
        ServletContext c3 = getServletContext();
        Object obj2 = c3.getAttribute("tt3");
        String dlno = obj2.toString();
        ServletContext c4 = getServletContext();
        Object obj3 = c4.getAttribute("tt4");
        String ipn = obj3.toString();
        ServletContext c5 = getServletContext();
        Object obj4 = c5.getAttribute("tt5");
        String str1 = obj4.toString();



        //String us = request.getParameter("c10");
        String dt = request.getParameter("datum1");
        String rep = request.getParameter("trec");
        String r = request.getParameter("t4");
        int pna = Integer.parseInt(request.getParameter("tpna"));
        String add = request.getParameter("tadd");
       int ofid=Integer.parseInt(request.getParameter("toffid"));

        //out.print(s);
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("insert into vehiclechk values(?,?,?,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,?,?)");

            pst.setString(1, ven);
            pst.setString(2, vetp);
            pst.setString(3, dlno);
            pst.setString(4, ipn);
            pst.setString(5, r);
            pst.setString(6, str1);
            pst.setString(7, dt);
            pst.setInt(8, pna);
            pst.setString(9, rep);
            pst.setString(10, add);
             pst.setInt(11, ofid);


            pst.executeUpdate();
        } catch (Exception e) {
            out.print(e);

        } finally {
            out.close();
        }
        out.print(ven + "hi" + vetp);
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
