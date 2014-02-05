class IousController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @ious = current_user.ious
    # @ious = Iou.all
  end

  def new
    @iou = Iou.new
    @iou.build_contact
  end

  def create
    
    new_iou = params.require(:iou).permit(:balance, :name, :memo, :status, :due_date, :rec_pay,
        :contact_attributes => [:first_name, :last_name, :email, :phone, :user_id])
    @iou = Iou.new(new_iou)
    @iou.user_id = current_user.id
    @iou.save

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
