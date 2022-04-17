class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    if params[:date] != nil then
      @event.date = params[:date]
    end
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end 
  end

  def edit
    @event = Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:date, :image, :events_select_id, :met_person)
  end 
end
