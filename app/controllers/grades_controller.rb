class GradesController < ApplicationController

	def index
		@grades = Grade.all
	end

	def show
		@grade = Grade.find(params[:id])
	end

	def destroy
		@grade = Grade.find(params[:id])

		grade.destroy

		redirect_to "/grades"
	end

	def new
		@grade = Grade.new
	end


	def create
		@grade = Grade.new

		@grade.name = params[:grade][:name]
		@grade.course = params[:grade][:course]
		@grade.id_num = params[:grade][:id_num]
		@grade.prel_ex = params[:grade][:prel_ex]
		@grade.mid_ex = params[:grade][:mid_ex]
		@grade.pref_ex = params[:grade][:pref_ex]
		@grade.fin_ex = params[:grade][:fin_ex]

		@grade.save

		redirect_to "/grades/#{@grade.id}"
	end

end
