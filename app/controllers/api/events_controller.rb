class Api::EventsController < ApplicationController
 # before_filter :set_headers
  skip_before_filter  :verify_authenticity_token
  before_filter :restrict_access
  respond_to :json

    def show
      @event = Event.find(params[:id])
      # authorize @event
      render json: @event
    end
    def index
      @events = Event.all
      # @events = policy_scope(Event.all)
      render json: @events
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

  def restrict_access
    api_key = User.find_by_authentication_token(params[:token])
    head :unauthorized unless api_key
  end

  def event_params
      params.require(:event).permit(:app_id, :name, :action_1, :action_2, :ip_address)
  end
end
