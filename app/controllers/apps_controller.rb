class AppsController < ApplicationController

  def index
    @apps = current_user.apps
  end

  def show
    @app = App.find params[:id]
    @events = Event.all
  end

  def new
    @app = App.new
  end

  def create
     @app = current_user.apps.build(app_params)
    if @app.save
      flash[:notice] = "App was saved."
      redirect_to apps_path
    else
      flash[:error] = "There was an error saving the post. Please try again."
      redirect_to :back
    end
  end
  
private
  def app_params
     params.require(:app).permit(:name, :desc)
   end

end
