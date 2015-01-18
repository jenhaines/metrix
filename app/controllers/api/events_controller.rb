class Api::EventsController < ApplicationController
 before_filter :set_headers
  # skip_before_filter  :verify_authenticity_token
  respond_to :json

    def show
      respond_with Event.find(params[:id])
    end

    def create
      puts params
      puts "I MADE IT!!!"
      event = Event.new(event_params)
      event.save
      render json: { message: "It worked!" }, status: 200
    end

  private

  def event_params
      params.require(:event).permit(:name, :action_1, :action_2)
  end

  def set_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Expose-Headers'] = 'ETag'
      headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
      headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
      headers['Access-Control-Max-Age'] = '1728000'
  end
end
