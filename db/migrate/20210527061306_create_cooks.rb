class CreateCooks < ActiveRecord::Migration[6.1]
  def change
    create_table :cooks do |t|
      t.string :name
      t.text :material
      t.text :Process
      t.text :memo
      t.integer :score
      t.string :image

      t.timestamps
    end
  end
end
