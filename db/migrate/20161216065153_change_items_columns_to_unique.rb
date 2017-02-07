class ChangeItemsColumnsToUnique < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.index :name, unique: true
    end
  end
end
