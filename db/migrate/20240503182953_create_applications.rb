class CreateApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :applications do |t|
      t.string :token, null: false, index: { unique: true }
      t.bigint :chats_count, default: 0
      t.string :name, null: false

      t.timestamps
    end
  end
end
