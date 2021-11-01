class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        grade = Student.order(grade: :desc)
        render json: grade
    end
    def highest_grade
        best = Student.order(grade: :desc)
        highest_grade = best.first

        render json: highest_grade
    end
end
