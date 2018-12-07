package Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginAction extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");

        String pwd = req.getParameter("pwd");

        String target = "";

        HttpSession session = req.getSession();

        if (uname.equals("admin") && pwd.equals("admin")) {

            session.setAttribute("result", "ok");

            target = "/success.jsp";

        } else {

            session.setAttribute("result", "wrong");

            target = "/index.jsp";

        }
        resp.sendRedirect(target);

    }
}
