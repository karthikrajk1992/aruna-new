class AddColumnUrlPathToMainCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :main_categories, :url_path, :string
  end
end
