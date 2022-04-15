class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end 
  end

  private
  def event_params
    params.require(:event).permit(:image, :date, :events_select_id, :met_person)
  end 
end
