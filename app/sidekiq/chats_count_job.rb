class ChatsCountJob
  include Sidekiq::Job

    def perform
        Application.find_each do |application|
            application.update(chats_count: application.chats.count)
        end
    end
end
