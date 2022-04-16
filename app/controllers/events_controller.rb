class EventsController < ApplicationController

  def index
    @events = Event.all
    respond_to do |format|
      format.json{
        render json:
        @event.to_json(
          only: [:event_select_id, :date]
        )
      }
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
    params.require(:event).permit(:date, :image, :events_select_id, :met_person)
  end 
end
