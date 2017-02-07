class ChangeUsersColumnsToUnique < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.index :username, unique: true
      t.index :emailid, unique: true
    end
  end
end
