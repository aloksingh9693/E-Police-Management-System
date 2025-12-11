
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import stolenpack.stolenclass;

public class stolenservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pst;
        Connection con;

        String vn = request.getParameter("t2");
        String tp = request.getParameter("menu1");
        String en = request.getParameter("t3");
        String cn = request.getParameter("t4");
        String mn = request.getParameter("t5");
        String vc = request.getParameter("menu2");
        String s4 = request.getParameter("datum1");
        String pos = request.getParameter("t6");
        String on = request.getParameter("t7");
        String gd = request.getParameter("t8");
        String add = request.getParameter("t9");
        int cotno = Integer.parseInt(request.getParameter("t10"));
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("insert into stolencar values(?,?,?,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,?,s_id.nextval,?,?)");

            pst.setString(1, vn);

            pst.setString(2, tp);
            pst.setString(3, en);
            pst.setString(4, cn);

            pst.setString(5, mn);
            pst.setString(6, vc);
            pst.setString(7, s4);

            pst.setString(8, pos);

            pst.setString(9, on);

            pst.setString(10, gd);

            pst.setString(11, add);
            pst.setInt(12, cotno);

            pst.executeUpdate();


        } catch (Exception e) {
            out.print(e);
        } finally {
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
