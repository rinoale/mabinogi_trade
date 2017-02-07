class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :emailid
      t.string :password_digest
      t.integer :account_level

      t.timestamps null: false
    end
  end
end
