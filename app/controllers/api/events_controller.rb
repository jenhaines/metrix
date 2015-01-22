class Api::EventsController < ApplicationController
 # before_filter :set_headers
  skip_before_filter  :verify_authenticity_token
  respond_to :json

    def show
      @event = Event.find(params[:id])
      authorize @event
      render json: @event
    end
    def index
      render json: Event.all
    end

    def create
      if App.exists?(event_params[:app_id])
        event = Event.new(event_params)
        event.ip_address = request.remote_ip
        event.save
      end
      head 200
    end

  private

  def event_params
      params.require(:event).permit(:app_id, :name, :action_1, :action_2, :ip_address)
  end
end
