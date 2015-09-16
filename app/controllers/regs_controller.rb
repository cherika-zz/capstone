class RegsController < ApplicationController

  def new
    @state = State.find(params[:state_id])
    @reg = @state.regs.new
  end

  def show
    @state = State.find(params[:state_id])
    @reg = Reg.find(params[:id])
  end

  def create
    @state = State.find(params[:state_id])
    @reg = @state.regs.build(regs_params)

    if @reg.save
      flash[:notice] = "Saved successfully."
      # pathod methods create url strings; give method the id
      redirect_to state_reg_path(@state, @reg)
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  private

  def regs_params
    params.require(:reg).permit(:name, :attachment)
  end
end
