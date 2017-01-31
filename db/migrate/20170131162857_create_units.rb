class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :unit
      t.float :factor
      t.integer :m
      t.integer :kg
      t.integer :s
      t.integer :a
      t.integer :k
      t.integer :cd
      t.integer :mol

      t.timestamps
    end
  end
end
