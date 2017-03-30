class AddTitleEnDescriptionEnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :title_en, :string
    add_column :products, :description_en, :text
  end
end
