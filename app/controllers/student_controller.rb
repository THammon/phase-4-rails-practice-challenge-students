class StudentController < ApplicationController
    
    def index
        students = Student.all
        render json: students
    end

    def create
        student = Student.create(student_params)
        render json: student, status: :created
    end

    def update
        student = Student.find_by(id: params[:id])
        student.update(student_params)
        render json: student
    end

    def delete
        student = Student.find_by(id: params[:id])
        student.destroy
        head :no_content
    end

    private

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end
end
