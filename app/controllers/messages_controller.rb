# frozen_string_literal: true

class MessagesController < ApplicationController
    before_action :set_chat
    before_action :set_message, except: [:index, :create, :search]

    def index 
        @messages = @chat.messages
        
        render_json(data: serialize_collection("Message", @messages))
    end
    
    def show 
        render_json(data: serialize_record("Message", @message))
    end

    def search
        @query = params[:body]
        raise MissingParamError.new("Query param missing") if @query.blank?

        @messages = Message.search(@query, @chat.id)

        render_json(data: serialize_collection("Message", @messages))
    end

    def create 
        @message_number = Message.generate_message_number(@chat.number)

        MessagesJob.perform_async(@chat.id, message_params[:body], @message_number)

        render_json(data: { message_number: @message_number }, status: :created)
    end

    def update 
        @message.update!(message_params)

        render_json(data: serialize_record("Message", @message))
    end
end
