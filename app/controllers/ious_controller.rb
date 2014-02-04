class IousController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @ious = current_user.ious
  end

  def new
    @iou = Iou.new
  end

  def create
    new_iou = params.require(:iou).permit(:balance, :name, :memo, :status, :due_date)
    @iou = Iou.create(new_iou)
    render :show
  end

  def show
    @iou = Iou.find(params[:id])
  end

  def edit
    @iou = Iou.find(params[:id])
  end

  def update
    @iou = Iou.find(params[:id])
    @iou.update_attributes(params[:iou])
    render :show
  end

  def destory
    iou = Iou.find(params[:id])
    iou.delete
    redirect_to(ious_path)
  end
  
end
