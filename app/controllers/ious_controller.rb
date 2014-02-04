class IousController < ApplicationController
  before_filter :authenticate_user!, except: [:show]

  def index
    @ious = Iou.all
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
