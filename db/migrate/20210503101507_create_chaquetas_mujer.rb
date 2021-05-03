class CreateChaquetasMujer < ActiveRecord::Migration[6.1]
  def change
    create_table :chaquetas_mujer do |t|
      t.string :name
      t.string :price
      t.string :source

      t.timestamps
    end
  end
end
