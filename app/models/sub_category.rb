class SubCategory < ApplicationRecord
	belongs_to :main_category
	has_many_attached :uploads
end
