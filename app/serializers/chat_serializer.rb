# frozen_string_literal: true

class ChatSerializer
    include JSONAPI::Serializer
    
    attribute :application_token do |record|
        record.application.token 
    end

    attributes :number, :messages_count
end
