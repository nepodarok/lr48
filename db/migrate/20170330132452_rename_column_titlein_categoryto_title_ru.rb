class RenameColumnTitleinCategorytoTitleRu < ActiveRecord::Migration
  def change
    rename_column :categories, :name, :name_ru
  end

end
