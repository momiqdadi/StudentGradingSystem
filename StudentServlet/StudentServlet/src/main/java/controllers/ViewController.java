package controllers;

import models.Student;
import repository.StudentRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/view")
public class ViewController extends HttpServlet {
    private final StudentRepository studentRepository = new StudentRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/grades.jsp");

        if(id >= 0){
            Student student = studentRepository.get(id);
            System.out.println(student);
            req.setAttribute("student", student);
            rd.forward(req, resp);
        }
    }
}
