class Chat < ApplicationRecord
    # associations
   # belongs_to :application, foreign_key: 'application_token'
    has_many :messages, dependent: :destroy
    
    # validations
    validates :number, presence: true, uniqueness: { scope: :application_token },
                        numericality: { greater_than_or_equal_to: 1 }

    def self.generate_chat_number(application_token)
        redis_key = "application:#{application_token}:chat_number"
        $redis.incr(redis_key)
    end
end
