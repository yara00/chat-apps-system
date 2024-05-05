# frozen_string_literal: true

class ApplicationSerializer
    include JSONAPI::Serializer
  
    attributes :token, :name, :chats_count
end
