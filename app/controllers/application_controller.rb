# frozen_string_literal: true

class ApplicationController < ActionController::API
    include ExceptionHandler
    include SettersMethods
    include ParamsHelper
    include ResponseHelper
end
