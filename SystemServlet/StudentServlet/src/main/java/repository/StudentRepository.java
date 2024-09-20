package repository;

import config.DataBaseConnector;
import models.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentRepository {
    private final DataBaseConnector connector = DataBaseConnector.getInstance();

    public boolean put(Student student){
        String sql = "INSERT INTO student " +
                     "(name, math, english, arabic, science) " +
                     "VALUES (?, ?, ?, ?, ?)";

        try{
            Connection connection = connector.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);

            if(student == null){
                return false;
            }

            ps.setString(1, student.getName());
            ps.setDouble(2, student.getMath());
            ps.setDouble(3, student.getEnglish());
            ps.setDouble(4, student.getArabic());
            ps.setDouble(5, student.getScience());

            int effectedRows = ps.executeUpdate();

            System.out.println("Number of effected rows = " + effectedRows);

            if(effectedRows > 0){
                connection.close();
                return true;
            }

        }catch(SQLException sqe){
            System.out.println("Error Inserting Student.");
            sqe.printStackTrace();
        }
        return false;
    }

    public Student get(int id){
        String sql = "SELECT * FROM student "+
                     "WHERE id = " + id;
        try{
            Connection connection = connector.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                Student.StudentBuilder studentBuilder = new Student.StudentBuilder();

               Student student = studentBuilder
                       .setId(rs.getInt(1))
                       .setName(rs.getNString(2))
                       .setMath(rs.getDouble(3))
                .setEnglish(rs.getDouble(4))
                .setArabic(rs.getDouble(5))
                .setScience(rs.getDouble(6))
                        .build();

                return student;
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        return new Student.StudentBuilder()
                .setName("Not Found")
                .setEnglish(0)
                .setArabic(0)
                .setArabic(0)
                .setScience(0)
                .build();
    }
}
