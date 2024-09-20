package controllers;

import services.AuthService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/signin")
public class AuthController extends HttpServlet {
    private final AuthService auth = new AuthService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        RequestDispatcher dis = req.getRequestDispatcher("WEB-INF/jsp/home.jsp");
        PrintWriter out = resp.getWriter();

        if(auth.canSignIN(username, password)){
            out.write("Login Successful");
            dis.forward(req,resp);
        }else {
            out.write("Login NOT Successful");
        }
    }
}
