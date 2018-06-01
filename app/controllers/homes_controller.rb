class HomesController < ApplicationController

	def index
		# binding.pry
		@main_category = MainCategory.find(params[:id])
		@paragraph = Paragraph.find_by_main_category_id(@main_category.id)
		@heading = Heading.find_by_main_category_id(@main_category.id)
	end
	def update
		@datas = default_params
		# binding.pry
		if params[:heading]
			@heading = Heading.find(params[:id])
			if @heading.update(default_params)
				# binding.pry
				flash[:success] = "Heading updated successfully updated successfully"
				redirect_to '/update/home/1'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/home/1'
			end
		else
			@paragraph = Paragraph.find(params[:id])
			if @paragraph.update(default_params)
				# binding.pry
				flash[:success] = "Paragraph updated successfully"
				redirect_to '/update/home/1'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/home/1'
			end
		end
	end
	

	private
	def default_params
		# binding.pry
		if params[:paragraph]
			params.require(:paragraph).permit(:description, :main_category_id, :sub_category_id)

		elsif params[:heading]
			params.require(:heading).permit(:description, :main_category_id, :sub_category_id,:heading_type)

		end
	end
end