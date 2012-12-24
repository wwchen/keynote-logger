class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :ip
      t.string :type
      t.string :header
      t.string :content
      t.string :error_code
      t.references :log

      t.timestamps
    end
    add_index :requests, :log_id
  end
end
