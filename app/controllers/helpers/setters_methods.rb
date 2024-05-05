# frozen_string_literal: true

module SetterMethods

    def set_application
      @application = Application.find_by!(token: params[:application_token])
    end

    def set_chat_methods
      @chat = @application.chats.find_by!(application_token: params[:application_token], number: params[:chat_number])
    end
  
    def set_message_methods
      @message = @chat.messages.find_by!(chat_number: params[:chat_number], number: params[:message_number])
    end
end
