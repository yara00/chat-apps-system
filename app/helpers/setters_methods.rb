# frozen_string_literal: true

module SettersMethods

    def set_application
      @application = Application.find_by!(token: params[:application_token])
    end

    def set_chat
      @chat = Chat.find_by!(application_token: params[:application_token], number: params[:chat_number])
     # raise
    end
  
    def set_message
      set_chat
      @message = @chat.messages.find_by!(number: params[:message_number])
    end
end
