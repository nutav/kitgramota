class TeachersController < ApplicationController
	load_resource class: 'Teacher'

	def index
	end

	def laoshi
		@teachers = Teacher.all
	end
	
	def new 
	end

	def create
		@teacher = Teacher.create(resource_params)
	    if @teacher.save!
	      redirect_to teachers_path, notice: "Была добавлена запись о преподавателе по имени #{@teacher.full_name}"
	    else
	      render action: :new 
	    end
	end

	def edit
	end

	def update 
		@teacher.update(resource_params)
		if @teacher.save!
	      redirect_to teachers_path, notice: "Была изменена запись о преподавателе по имени #{@teacher.full_name}"
	    else
	      render action: :edit
	    end
	end

	def destroy 
	end

	def resource_params
		params.require(:teacher).permit(:last_name, :first_name, :patronym,
			:extra, :education, :probation, :speciality, :years, :about, :avatar)
	end
end