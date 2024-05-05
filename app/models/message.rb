class Message < ApplicationRecord
    include Searchable
    # associations
    belongs_to :chat
    
    # validations
    validates :number, presence: true, uniqueness: { scope: :chat_number },
                        numericality: { greater_than_or_equal_to: 1 }
    validates :body, presence: true
end
