class Application < ApplicationRecord
    has_secure_token :token
    
    # associations
    has_many :chats, dependent: :destroy
    
    # validations
    validates :token, presence: true, uniqueness: { case_sensitive: false }
    validates :name, presence: true
end
