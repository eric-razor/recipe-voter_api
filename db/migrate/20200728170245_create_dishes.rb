class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.belongs_to :user
      t.belongs_to :recipe_card

      t.timestamps
    end
  end
end
