class EventsController < ApplicationController
  def index
    if params[:state_id]
      @events = Event.by_state(params[:state_id])
    else
      @events = Event.all
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end
end
