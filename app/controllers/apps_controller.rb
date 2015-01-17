class AppsController < ApplicationController

  def index
    @apps = current_user.apps
  end

  def show
    @app = App.find params[:id]
    @events = @app.events

  end

end
