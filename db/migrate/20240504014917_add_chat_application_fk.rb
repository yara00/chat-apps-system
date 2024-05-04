class AddChatApplicationFk < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :chats, :applications, column: :application_token, primary_key: :token
  end
end
