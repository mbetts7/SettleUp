class UsersController < ApplicationController
# before_filter :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all
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
