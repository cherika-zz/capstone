class RegsController < ApplicationController
  def index
    @state = State.find(params[:state_id])
    @regs = @state.regs
    authorize @regs
  end

  def show
    @state = State.find(params[:state_id])
    @reg = Reg.find(params[:id])
    authorize @reg
  end

  def new
    @state = State.find(params[:state_id])
    @reg = Reg.new
    authorize @reg
  end

  def create
    @state = State.find(params[:state_id])
    @reg = @state.regs.build(regs_params)
    authorize @reg

    if @reg.save
      flash[:notice] = "Saved successfully."
      # pathod methods create url strings; give method the id
      redirect_to state_reg_path(@state, @reg)
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  def edit
    @state = State.find(params[:state_id])
    @reg = Reg.find(params[:id])
    authorize @reg
  end

  def update
    @state = State.find(params[:state_id])
    @reg = Reg.find(params[:id])
    authorize @reg
    if @reg.update_attributes(regs_params)
      redirect_to state_regs_path
    else
      flash[:error] = "There was an error. Please try again."
      render :edit
    end
  end

  def destroy
    @state = State.find(params[:state_id])
    @reg = Reg.find(params[:id])
    authorize @reg
    if @reg.destroy
      flash[:notice] = "Deleted successfully."
      redirect_to state_regs_path(@state)
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
