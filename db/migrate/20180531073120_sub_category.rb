class SubCategory < ActiveRecord::Migration[5.2]
  def change
  	create_table :SubCategories do |t|
    	t.text :name
    	t.text :table_type
    	t.integer :main_category_id
    	t.timestamps
    end
  end
end
