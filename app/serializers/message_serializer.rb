class MessageSerializer
    include JSONAPI::Serializer
  
    attributes :chat_number, :number, :body
end
