class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :number
      t.references :account, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :private

      t.timestamps
    end
  end
end
