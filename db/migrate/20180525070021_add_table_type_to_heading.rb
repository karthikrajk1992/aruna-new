class AddTableTypeToHeading < ActiveRecord::Migration[5.2]
  def change
    add_column :headings, :table_type, :string
  end
end
