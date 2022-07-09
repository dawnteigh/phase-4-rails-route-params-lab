class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

  def search
    render json: Student.all.filter{ |s| s.to_s.include?(params[:name])}
  end

end
