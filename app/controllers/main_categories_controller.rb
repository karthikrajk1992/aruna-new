class MainCategoriesController < ApplicationController

	def new
		@m_category = MainCategory.new
	end
	# def create
	# 	@m_category = MainCategory.new(params[:name])
	# end

end
  