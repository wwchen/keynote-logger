class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :token
      t.string :ip

      t.timestamps
    end
  end
end
