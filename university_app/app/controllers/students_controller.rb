class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show]
  def index
    @students = Student.all
  end

  def show
  end

  def edit

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "You have successfully signed up"
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update(student_params)
      flash[:notice] = "Your profile is updated successfully"
      redirect_to @student
    else
      render 'edit'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
