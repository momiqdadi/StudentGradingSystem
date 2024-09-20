package controllers;

import models.Student;
import repository.StudentRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/insert")
public class InsertController extends HttpServlet {
    private final StudentRepository studentRepository = new StudentRepository();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        double math = Double.parseDouble(req.getParameter("math"));
        double eng = Double.parseDouble(req.getParameter("eng"));
        double ar = Double.parseDouble(req.getParameter("ar"));
        double sci = Double.parseDouble(req.getParameter("sci"));
        Student.StudentBuilder builder = new Student.StudentBuilder();
        PrintWriter out = resp.getWriter();

        if(
                name != null
                && math >= 0
                && eng >= 0
                && ar >= 0
                && sci >= 0
        ){
            Student student = builder.setName(name)
                    .setMath(math)
                    .setEnglish(eng)
                    .setArabic(ar)
                    .setScience(sci)
                    .build();
            studentRepository.put(student);
            out.write("Insert Successful.");
        }else{
            out.write("Insert NOT Successful.");
        }
    }
}
