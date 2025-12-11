

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class newvanservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pst;
        Connection con;
        String s = request.getParameter("menu1");
        String vnno = request.getParameter("t3");
        int tid = Integer.parseInt(request.getParameter("t2"));
        String snm = request.getParameter("t1");
        String mno = request.getParameter("t4");

        String dt = request.getParameter("datum1");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("insert into newvan values(?,?,to_date(?,'dd/mm/yyyy'))");
            pst.setString(1, snm);
            pst.setString(2, mno);

            pst.setString(3, dt);
            pst.executeUpdate();
            if (s.equals("TwoWheeler")) {
                PreparedStatement pst1 = con.prepareStatement("insert into twowheeler values(?,?)");
                pst1.setString(1, vnno);
                pst1.setInt(2, tid);
                pst1.executeUpdate();
                out.print("aaaa");
            } else if (s.equals("FourWheeler")) {
                PreparedStatement pst2 = con.prepareStatement("insert into fourwheeler values(?,?)");
                pst2.setString(1, vnno);
                pst2.setInt(2, tid);
                pst2.executeUpdate();

            } else {
                out.print("bbbb");
            }
        } catch (Exception e) {
            out.print(e);
        } finally {
            out.close();
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
