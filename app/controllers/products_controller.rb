class ProductsController < ApplicationController
	before_action :verify_user
	def index
		# binding.pry
		@main_category = MainCategory.find(params[:id])
		# @paragraph = Paragraph.where(main_category_id: @main_category.id).order('id ASC')
		# @heading = Heading.where(main_category_id: @main_category.id).order('id ASC')
		@sub_categories = SubCategory.where(main_category_id: @main_category.id).order('id ASC')
		# binding.pry
	end
	def update
		@datas = default_params
		# binding.pry
			# binding.pry
			@sub_categories = SubCategory.find(params[:sub_category][:id])
			if @sub_categories.update(default_params)
				# binding.pry
				flash[:success] = "Sub Category updated successfully"
				redirect_to '/update/products/6'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/products/6'
			end
		
		
	end
	def edit
		# binding.pry
		@sub_categories = SubCategory.find(params[:sub_category][:id])
	end
	def destroy
		# binding.pry
		@image = ActiveStorage::Attachment.find(params[:id])
  		@image.purge
  		flash[:warning] = "Image successfully deleted"
  		redirect_to '/update/products/6'
	end

	private
	def default_params
		# binding.pry
			params.require(:sub_category).permit!

	end
	def verify_user
		binding.pry
		if !logged_in? then redirect_to admin_console_path end
	end
	
end