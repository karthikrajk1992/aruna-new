class CreateSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_categories do |t|
      t.text :name
      t.text :table_type
      t.integer :main_category_id

      t.timestamps
    end
  end
end
