class Heading < ActiveRecord::Migration[5.2]
  def change
    create_table :headings do |t|
    	t.string :heading_type
    	t.text :description
    	t.integer :main_category_id
    	t.integer :sub_category_id
    	t.timestamps
    end
  end
end
