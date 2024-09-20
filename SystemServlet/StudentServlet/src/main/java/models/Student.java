package models;

import java.util.Arrays;

public class Student {
    private String name;
    private int id;
    private double gpa;
    private double[] grades = new double[4];

    private Student(
            String name,
            int id,
            double math,
            double eng,
            double ar,
            double sci

    ) {
        this.name = name;
        this.id = id;
        this.grades[0] = math;
        this.grades[1] = eng;
        this.grades[2] = ar;
        this.grades[3] = sci;

        double sum = 0;
        for(int i = 0; i<4; i++){
            sum += this.grades[i];
        }

        double gpaTemp = sum / 4;
        this.gpa = gpaTemp;
    }

    public String getName() {
        return this.name;
    }
    public double getMath(){
        return this.grades[0];
    }
    public double getEnglish(){
        return this.grades[1];
    }
    public double getArabic(){
        return this.grades[2];
    }
    public double getScience(){
        return this.grades[3];
    }
    public double getGpa(){
        return this.gpa;
    }
    public int getId() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", grades=" + Arrays.toString(grades) +
                ", gpa=" + gpa
                +
                '}';
    }

    public static class StudentBuilder{
        private String name;
        private int id;
        private double[] grades = new double[4];

        public StudentBuilder setId(int id){
            this.id = id;
            return this;
        }
        public StudentBuilder setName(String name) {
            this.name = name;
            return this;
        }
        public StudentBuilder setMath(double grade){
            if(grade >= 0){
                this.grades[0] = grade;
            }

            return this;
        }
        public StudentBuilder setEnglish(double grade){
            if(grade >= 0){
                this.grades[1] = grade;
            }

            return this;
        }
        public StudentBuilder setArabic(double grade){
            if(grade >= 0){
                this.grades[2] = grade;
            }

            return this;
        }
        public StudentBuilder setScience(double grade){
            if(grade >= 0){
                this.grades[3] = grade;
            }

            return this;
        }
        public Student build(){
            return new Student(
                    this.name,
                    this.id,
                    this.grades[0],
                    this.grades[1],
                    this.grades[2],
                    this.grades[3]
            );
        }
    }
}
