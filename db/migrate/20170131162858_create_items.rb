class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :barcode
      t.string :brand
      t.references :gendesc, foreign_key: true
      t.float :size
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
