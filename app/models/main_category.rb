class MainCategory < ActiveRecord::Base
	has_many :paragraphs
	has_many :headings
	has_many :sub_categories
  
end