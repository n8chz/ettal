class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :transaction, foreign_key: true
      t.references :item, foreign_key: true
      t.float{9,4} :price
      t.float :qty
      t.boolean :is_debit
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
