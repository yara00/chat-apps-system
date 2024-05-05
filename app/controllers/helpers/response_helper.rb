# frozen_string_literal : true

module ResponseHelper 
      def render_json(data: {}, message: "success", status: :ok)
      json_response = { message: message, data: data }

      render json: json_response, status: status
      end

      def render_error(error: {}, status: :unprocessable_entity)
        response_data = { error: error}

        render json: response_data, status: status
      end
    
      def serialize_record(model, data = {})
        "#{model}Serializer".constantize.new(data).serializable_hash[:data][:attributes]
      end
    
      def serialize_collection(model, data = {})
        "#{model}Serializer".constantize.new(data).serializable_hash[:data].map { |record| record[:attributes] }
      end
end