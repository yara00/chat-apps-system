class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.bigint :number, null: false 
      t.bigint :messages_count, default: 0
      t.string :application_token, null: false

      t.timestamps
    end

    add_index :chats, [:application_token, :number], unique: true
    
  end
end
