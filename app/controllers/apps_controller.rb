class AppsController < ApplicationController

  def index
    @apps = current_user.apps
  end

  def show
    @app = App.find params[:id]
    @events = Event.all

  end

end
