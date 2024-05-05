# frozen_string_literal: true

class ApplicationController < ActionController::API
    include SettersMethods
    include ParamsHelper
    include ResponseHelper
    include ExceptionHandler
end
