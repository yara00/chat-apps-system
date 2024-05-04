class AddMessageChatFk < ActiveRecord::Migration[7.1]
  def change
    add_index :chats, :number
    add_foreign_key :messages, :chats, column: :chat_number, primary_key: :number
  end
end
