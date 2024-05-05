class Message < ApplicationRecord
    include Searchable
    # associations
    belongs_to :chat
    
    # validations
    validates :number, presence: true, uniqueness: { scope: :chat_id },
                        numericality: { greater_than_or_equal_to: 1 }
    validates :body, presence: true

    def self.generate_message_number(chat_number)
        redis_key = "chat:#{chat_number}:message_number"
        $redis.incr(redis_key)
    end
end
