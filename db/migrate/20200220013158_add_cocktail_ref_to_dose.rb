class AddCocktailRefToDose < ActiveRecord::Migration[5.2]
  def change
    add_reference :dose, :cocktail, foreign_key: true
  end
end
