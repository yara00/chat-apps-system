class MessagesJob
    include Sidekiq::Job
    
    def perform(chat_id, message_body, message_number)
        Message.create!(chat_id: chat_id, body: message_body, number: message_number)
    end
end
