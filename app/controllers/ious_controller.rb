class IousController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    # user = User.find_by_id(:user.id)
    @ious = current_user.ious
    # @ious = Iou.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end
  
end
