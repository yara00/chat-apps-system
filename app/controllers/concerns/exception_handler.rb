# frozen_string_literal: true

module ExceptionHandler
    extend ActiveSupport::Concern
    include ResponseHelper

    class MissingParamError < StandardError
      def initialize(message = 'Missing parameter')
        super
      end
    end
  
    included do
      rescue_from ActiveRecord::RecordNotFound do |e|
        render_error(error: e.message, status: :not_found)
      end
  
      rescue_from ActiveRecord::RecordInvalid do |e|
        render_error(error: e.message, status: :unprocessable_entity)
      end
  
      rescue_from StandardError do |e|
        render_error(error: e.message, status: :internal_server_error)
      end
  
      rescue_from MissingParamError do |e|
        render_error(error: e.message, status: :bad_request)
      end
    end
end
  