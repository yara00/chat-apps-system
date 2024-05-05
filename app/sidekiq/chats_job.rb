class ChatsJob
    include Sidekiq::Job

    def perform(application_token, chat_number)
        Chat.create!(application_token: application_token, number: chat_number)
    end
end
