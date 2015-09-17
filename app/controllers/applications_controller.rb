class ApplicationsController < ApplicationController
  def index
    @state = State.find(params[:state_id])
    @applications = @state.applications
  end

  def new
    @state = State.find(params[:state_id])
    @application = Application.new
  end

  def show
    @state = State.find(params[:state_id])
    @application = Application.find(params[:id])
  end
end
