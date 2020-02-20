class RemoveColumnsFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :cocktails_id
    remove_column :doses, :ingredients_id
  end
end
