class CreateBanadoresHombre < ActiveRecord::Migration[6.1]
  def change
    create_table :banadores_hombre do |t|
      t.string :name
      t.string :price
      t.string :source

      t.timestamps
    end
  end
end
