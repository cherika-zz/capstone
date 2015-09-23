class StatesController < ApplicationController
  def index
    @states = State.all
    @state = State.new
    authorize @states
    authorize @state
  end

  def new
    @state = State.new
    authorize @state
  end

  def show
    @state = State.find(params[:id])
    @regs = @state.regs
  end

  def create
    @state = State.new(state_params)
    @state.user = current_user
    authorize @state

    if @state.save
      flash[:notice] = "Your state was saved successfully."
      redirect_to states_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

    def edit
      @state = State.find(params[:id])
      authorize @state
    end

    def update
      @state = State.find(params[:id])
      authorize @state
      if @state.update_attributes(state_params)
        redirect_to @state
      else
        flash[:error] = "There was an error. Please try again."
        render :edit
      end
    end

  private

  def state_params
    params.require(:state).permit(:name)
  end
end
