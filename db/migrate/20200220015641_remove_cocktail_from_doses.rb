class RemoveCocktailFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :doses, column: :cocktails_id
    remove_foreign_key :doses, column: :ingredients_id
  end
end
