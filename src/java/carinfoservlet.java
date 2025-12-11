
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class carinfoservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PreparedStatement pst;
        Connection con;
        String date = request.getParameter("datum1");
        String name = request.getParameter("t1");
        String oname = request.getParameter("t2");
        int dcover = Integer.parseInt(request.getParameter("t3"));
        int mread = Integer.parseInt(request.getParameter("t4"));
        int pqty = Integer.parseInt(request.getParameter("t5"));
        String vno = request.getParameter("t6");
        String s1 = request.getParameter("t7");
       String s2 = request.getParameter("menu4");
       String time = s1 + ":" + s2;
       int than=Integer.parseInt(request.getParameter("thana"));
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:Oracle:thin:@localhost:1521:XE";
            con = DriverManager.getConnection(url, "scott", "tiger");
            pst = con.prepareStatement("insert into carinfo values(to_date(?,'dd/mm/yy'),?,?,?,?,?,?,?,?)");
            pst.setString(1, date);
            pst.setString(2, name);
            pst.setString(3, oname);
            pst.setInt(4, dcover);
            pst.setInt(5, mread);
            pst.setInt(6, pqty);
            pst.setString(7, vno);
            pst.setString(8, time);
            pst.setInt(9, than);

            pst.executeUpdate();

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
