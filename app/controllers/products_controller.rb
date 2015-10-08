class ProductsController < ApplicationController
	def create
		@project = Project.find(params[:id])
		@project.product.create(product_params)
		redirect_to project_path(@project)
	end


private

  def product_params
    params.require(:product).permit(:name, :quantity)
  end
end
