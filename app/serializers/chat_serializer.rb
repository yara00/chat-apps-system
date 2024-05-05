# frozen_string_literal: true

class ChatSerializer
    include JSONAPI::Serializer

    attributes :application_token, :number, :messages_count
end
