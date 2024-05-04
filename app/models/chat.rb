class Chat < ApplicationRecord
    # associations
    belongs_to :application, foreign_key: 'application_token'
    has_many :messages, dependent: :destroy
    
    # validations
    validates :number, presence: true, uniqueness: { scope: :application_token },
                        numericality: { greater_than_or_equal_to: 1 }
    validates :name, presence: true
end
