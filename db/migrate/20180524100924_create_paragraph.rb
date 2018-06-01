class CreateParagraph < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.text :description
      t.integer :main_category_id
      t.integer :sub_category_id
    end
  end
end
