class GalleryController < ApplicationController 
	def index
		# binding.pry
		@main_category = MainCategory.find(params[:id])
		# @paragraph = Paragraph.where(main_category_id: @main_category.id).order('id ASC')
		@heading = Heading.where(main_category_id: @main_category.id).order('id ASC')
		@sub_categories = SubCategory.where(main_category_id: @main_category.id).order('id ASC')
		# binding.pry
	end
	def update
		@datas = default_params
		# binding.pry
		if params[:heading]
			@heading = Heading.find(params[:id])
			if @heading.update(default_params)
				# binding.pry
				flash[:success] = "Heading updated successfully updated successfully"
				redirect_to '/update/gallery/4'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/gallery/4'
			end
		else
			# binding.pry
			@sub_categories = SubCategory.find(params[:sub_category][:id])
			if @sub_categories.update(default_params)
				# binding.pry
				flash[:success] = "Sub Category updated successfully"
				redirect_to '/update/gallery/4'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/gallery/4'
			end
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
  		redirect_to '/update/gallery/4'
	end

	private
	def default_params
		# binding.pry
		if params[:sub_category]
			params.require(:sub_category).permit!

		elsif params[:heading]
			params.require(:heading).permit(:description, :main_category_id, :sub_category_id,:heading_type)

		end
	end

end