class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :detail
      t.references :type
      t.references :log

      t.timestamps
    end
    add_index :notices, :type_id
    add_index :notices, :log_id
  end
end
