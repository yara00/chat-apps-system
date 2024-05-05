# frozen_string_literal: true

class ChatsController < ApplicationController
    before_action :set_application
    before_action :set_chat, except: [:index, :create]

    def index 
        @chats = Chat.where(application_token: params[:application_token])
        render_json(data: serialize_collection("Chat", @chats))
    end

    def show 
        render_json(data: serialize_record("Chat", @chat))
    end

    def create 
        @chat_number = Chat.generate_chat_number(params[:application_token])

        ChatsJob.perform_async(params[:application_token], @chat_number)
        
        render_json(data: { chat_number: @chat_number }, status: :created)
    end
end
