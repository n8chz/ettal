class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :handle
      t.string :fullname
      t.string :email
      t.string :pwdhash
      t.boolean :private

      t.timestamps
    end
  end
end
