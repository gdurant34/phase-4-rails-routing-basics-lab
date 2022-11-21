class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        grades_desc = Student.all.order(grade: :desc)
        render json: grades_desc
    end

    def highest_grade
        grade = Student.all.order(grade: :desc).first
        render json: grade
    end
end
