class CalendarController < ApplicationController
  def index
    @current_month = Date.today.strftime('%B')
    @applications = Application.current_month
  end
end
