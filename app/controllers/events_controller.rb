class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def open_index
    @events = Event.order("created_at DESC")
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

  
  def show
    @event = Event.find(params[:id])
  end
  
  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    if event.destroy
      redirect_to root_path
    end
  end
  private
  def event_params
    params.require(:event).permit(:date, :image, :events_select_id, :met_person, :id, :checkbox)
  end 
end
