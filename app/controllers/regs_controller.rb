class RegsController < ApplicationController
  def index

  end

  def new
    @state = State.find(params[:state_id])
    @reg = @state.regs.new
  end

  def show
    @state = State.find(params[:state_id])
    @reg = Regs.find(params[:id])
  end

  def create
    @state = State.find(params[:state_id])
    @reg = @state.regs.new(regs_params)
    if @reg.save
      flash[:notice] = "Saved successfully."
      redirect_to state_reg_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end
end

def regs_params
  params.require(:reg).permit(:name)
end
