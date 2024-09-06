# app/controllers/api/v1/moods_controller.rb
module Api
  module V1
    class MoodsController < ApplicationController
      #skip_before_action :verify_authenticity_token  # If you are testing with Postman or curl

      def analyze
        # Parse JSON request body if necessary
        request_body = request.body.read
        parsed_params = JSON.parse(request_body)

        text = parsed_params['text']
        begin
          # Run the Python script and capture the output
          result = `python3 mood_analysis.py "#{text}"`
          
          # Parse the JSON output from the Python script
          sentiment_result = JSON.parse(result)
          
          # Return the result as JSON
          render json: sentiment_result
        rescue JSON::ParserError => e
          render json: { error: "Failed to parse JSON from Python script: #{e.message}" }, status: :unprocessable_entity
        rescue => e
          render json: { error: "An unexpected error occurred: #{e.message}" }, status: :internal_server_error
        end
      end
    end
  end
end
