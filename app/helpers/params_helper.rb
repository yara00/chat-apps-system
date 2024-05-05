# frozen_string_literal: true

module ParamsHelper
    def application_params 
        params.permit(:name)
    end

    def message_params 
        params.permit(:body)
    end
end
