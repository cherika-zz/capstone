class ApplicationsController < ApplicationController
  def index
    @state = State.find(params[:state_id])
    @applications = @state.applications
  end

  def new
    @state = State.find(params[:state_id])
    @application = Application.new
  end

  def create
    @state = State.find(params[:state_id])
    @application = @state.applications.build(app_params)

    if @application.save
      flash[:notice] = "Saved successfully."
      # pathod methods create url strings; give method the id
      redirect_to state_application_path(@state, @application)
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  def show
    @state = State.find(params[:state_id])
    @application = Application.find(params[:id])
  end

  def destroy
    @state = State.find(params[:state_id])
    @application = Application.find(params[:id])
    if @application.destroy
      flash[:notice] = "Deleted successfully."
      redirect_to state_applications_path(@state)
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  private

  def app_params
    params.require(:application).permit(:name, :attachment)
  end
end
