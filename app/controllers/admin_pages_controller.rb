class AdminPagesController < ApplicationController
	before_action :setCat

	def index
		
	end

	private
	def setCat
		@main_cat = MainCategory.all.order('id ASC')
		
	end
end