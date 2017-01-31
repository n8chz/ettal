class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.references :entity, foreign_key: true
      t.boolean :is_void

      t.timestamps
    end
  end
end
