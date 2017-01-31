class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.integer :no
      t.float :frac
      t.string :unit
      t.string :street
      t.string :box
      t.string :city
      t.string :polsub
      t.string :postal
      t.string :nation
      t.string :phone
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
