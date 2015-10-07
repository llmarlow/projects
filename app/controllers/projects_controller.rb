class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@product = Product.new
	end

	def new
		@project = Project.new
	end

	def create
		Project.create(project_params)
		redirect_to projects_path
	end


private

	def project_params
		params.require(:project).permit(:name, :description)
	end

end
