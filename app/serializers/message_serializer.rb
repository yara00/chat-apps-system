# frozen_string_literal: true

class MessageSerializer
    include JSONAPI::Serializer

    attribute :application_token do |record|
        record.chat.application.token 
    end

    attribute :chat_number do |record|
        record.chat.number 
    end

    attributes :number, :body
end
