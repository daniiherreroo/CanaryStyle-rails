class CreateComplementosHombre < ActiveRecord::Migration[6.1]
  def change
    create_table :complementosHombre do |t|
      t.string :name
      t.string :price
      t.string :source

      t.timestamps
    end
  end
end
