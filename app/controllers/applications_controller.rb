# frozen_string_literal: true

class ApplicationsController < ApplicationController
    before_action :set_application, except: [:index, :create]

    def index 
        @applications = Application.all
        serialize_collection("Application", @applications)
    end
    
    def show 
        serialize_record("Application", @application)
    end

    def create 
        @application = Application.create!(application_params)
        serialize_record("Application", @application)
    end

    def update 
        @application.update!(application_params)
        serialize_record("Application", @application)
    end
end
