class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def new
    @state = State.new
  end

  def show
    @state = State.find(params[:id])
  end

  def create
    @state = State.new(state_params)
    if @state.save
      flash[:notice] = "Your state was saved successfully."
      redirect_to states_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end
end

def state_params
  params.require(:state).permit(:name)
end
