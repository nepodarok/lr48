class EditTitleinProducts < ActiveRecord::Migration
  def change
    rename_column :products, :title, :title_ru
    rename_column :products, :description, :description_ru
  end
end
