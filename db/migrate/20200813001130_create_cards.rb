class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :recipe_name
      t.text :recipe_steps
      t.text :recipe_ingredients

      t.timestamps
    end
  endrail
end
