class Api::V1::CategoriesController < ApplicationController
	def category
		@category=Category.all
		render json:{success: true,category: @category}
	end

	def show
		@category = Category.find(params[:id])
		@service = @category.services
		@service_detail = @service.first.service_detail
		render json:{success: true,category: @category,service: @service,service_detail: @service_detail}
	end
end