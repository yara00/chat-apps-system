# frozen_string_literal: true

class MessagesWorker
    include Sidekiq::Worker
    sidekiq_options queue: :messages
  
    def perform(chat_id, message_body, message_number)
      Message.create!(chat_id: chat_id, body: message_body, number: message_number)
    end

end
  