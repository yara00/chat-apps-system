class AddMessageChatFk < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :messages, :chats
  end
end
