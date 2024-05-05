# frozen_string_literal: true

class ChatsController < ApplicationController
    before_action :set_chat, except: [:index, :create]

    def index 
        @chats = Chat.where(application_token: params[:application_token])
        serialize_collection("Chat", @chats)
    end

    def show 
        serialize_record("Chat", @chat)
    end

    def create 

    end
end
