# frozen_string_literal: true

class MessagesController < ApplicationController
    before_action :set_chat
    before_action :set_message, except: [:index, :create, :search]

    def index 
        @messages = @chat.messages
        serialize_collection("Message", @messages)
    end
    
    def show 
        serialize_record("Message", @message)
    end

    def search
        @messages = Message.search(@chat.id, params[:query])
        serialize_collection("Message", @messages)
    end

    def create 
        
    end

    def update 
        @message.update!(message_params)
        serialize_record("Message", @message)
    end
end
