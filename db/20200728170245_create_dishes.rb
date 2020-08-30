class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :category
      t.integer :user_id
      t.integer :card_id

      t.timestamps
    end
  end
end
