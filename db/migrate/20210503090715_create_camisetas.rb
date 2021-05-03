class CreateCamisetas < ActiveRecord::Migration[6.1]
  def change
    create_table :camisetas do |t|

      t.timestamps
    end
  end
end
