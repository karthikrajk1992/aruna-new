class AddTableTypeToParagraph < ActiveRecord::Migration[5.2]
  def change
    add_column :paragraphs, :table_type, :string
  end
end
