class ContactsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
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
