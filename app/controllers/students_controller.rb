class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

	def show
		@student
	end
	
	def activate
		#@student = Student.find(params[:id])
		@student.toggle(:active)
		@student.save
		#byebug
		redirect_to student_path(@student)
		# redirect_to "/students/:id"
	end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end