class CreateCamisetasHombre < ActiveRecord::Migration[6.1]
  def change
    create_table :camisetasHombre do |t|
      t.string :name
      t.string :price
      t.string :source

      t.timestamps
    end
  end
end
