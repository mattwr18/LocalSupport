class EventsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: "Event was successfully created"
    else
      render :new
    end
  end

  def show
    
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :end_date)
  end

  def logged_in_user
    unless signed_in?
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
  end
end
