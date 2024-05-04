class Message < ApplicationRecord
    # associations
    belongs_to :chat, foreign_key: 'chat_number'
    
    # validations
    validates :number, presence: true, uniqueness: { scope: :chat_number },
                        numericality: { greater_than_or_equal_to: 1 }
    validates :body, presence: true
end
