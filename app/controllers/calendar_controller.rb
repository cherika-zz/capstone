class CalendarController < ApplicationController
  def index
    @states = State.all
  end
end
