# frozen_string_literal: true

class MessageSerializer
    include JSONAPI::Serializer

    attribute :chat_number do |record|
        record.chat.number 
    end

    attributes :number, :body
end
