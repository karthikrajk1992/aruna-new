class WhyArunasController < ApplicationController

	def index
		# binding.pry
		@main_category = MainCategory.find(params[:id])
		@paragraph = Paragraph.where(main_category_id: @main_category.id).order('id ASC')
		@heading = Heading.where(main_category_id: @main_category.id)
		# binding.pry
	end
	def update
		@datas = default_params
		# binding.pry
		if params[:heading]
			@heading = Heading.find(params[:heading][:id])
			if @heading.update(default_params)
				# binding.pry
				flash[:success] = "Heading updated successfully updated successfully"
				redirect_to '/update/why-aruna/2'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/why-aruna/2'
			end
		else
			@paragraph = Paragraph.find(params[:paragraph][:id])
			if @paragraph.update(default_params)
				# binding.pry
				flash[:success] = "Paragraph updated successfully"
				redirect_to '/update/why-aruna/2'
			else
				# binding.pry
				flash[:warning] = "Some error occured please contact admin"
				redirect_to '/update/why-aruna/2'
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