class AddNoticeTypeLevel < ActiveRecord::Migration
  def change
    drop_table :types
    remove_column :notices, :created_at
    remove_column :notices, :updated_at
    change_table :notices do |t|
      t.string :type
      t.string :level
      t.timestamps
    end
  end
end
