# frozen_string_literal: true

class ApplicationsController < ApplicationController
    before_action :set_application, except: [:index, :create]

    def index 
        @applications = Application.all
        render_json(data: serialize_collection("Application", @applications))
    end
    
    def show 
        render_json(data: serialize_record("Application", @application))
    end

    def create 
        @application = Application.create!(application_params)
        render_json(data: serialize_record("Application", @application), status: :created)
    end

    def update 
        @application.update!(application_params)
        render_json(data: serialize_record("Application", @application))
    end
end
