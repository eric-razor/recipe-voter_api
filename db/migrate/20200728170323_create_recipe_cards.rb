class CreateRecipeCards < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_cards do |t|

      t.timestamps
    end
  end
end
