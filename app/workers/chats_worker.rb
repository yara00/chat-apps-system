# frozen_string_literal: true

class ChatsWorker
    include Sidekiq::Worker
    sidekiq_options queue: :chats 

    def perform(application_id, chat_number)
      Chat.create!(application_id: application_id, number: chat_number)
    end
end
  