class CreateRecipeCards < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_cards do |t|
      t.string :recipe_name
      t.text :recipe_steps

      t.timestamps
    end
  end
end
