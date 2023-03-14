class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students, except: [:created_at, :updated_at]

  end

  def show
    students = Student.find(params[:id]) 
    if students
    # render json: cheeses, only: [:id, :name, :price, :is_best_seller]
      render json: students, except: [:created_at, :updated_at]
      else
        render json: { error: 'Student not found' }, status: :not_found
      end
  end
    
end



