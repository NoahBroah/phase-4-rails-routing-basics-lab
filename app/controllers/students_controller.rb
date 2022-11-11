class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        order_by_grade = Student.order(grade: :desc)
        render json: order_by_grade
    end
end
