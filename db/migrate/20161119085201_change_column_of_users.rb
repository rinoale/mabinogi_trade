class ChangeColumnOfUsers < ActiveRecord::Migration
  def change
    rename_column :users, :userid, :username
  end
end
