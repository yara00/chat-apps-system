# frozen_string_literal: true

class ApplicationController < ActionController::API
    include SetterMethods
    include ParamsHelper
    include ResponseHelper
end
