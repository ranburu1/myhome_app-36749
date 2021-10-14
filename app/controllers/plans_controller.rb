class PlansController < ApplicationController
  before_action :set_plan, only: [:edit, :update, :destroy]
  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to root_path
   else
     render :edit
   end
  end

  def destroy
    if @plan.destroy
      redirect_to root_path
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:housework_id, :start_time)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end

end