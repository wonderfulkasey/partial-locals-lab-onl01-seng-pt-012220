class StudentsController < ApplicationController

  def index
      @students = Students.all
    end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
    render "edit"
    end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end
