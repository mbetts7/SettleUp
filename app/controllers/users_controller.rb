class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    get_ious
    get_contacts
    @payable_balance = current_user.ious.where(rec_pay: 'payable').sum('balance')
    @receivable_balance = current_user.ious.where(rec_pay: 'receivable').sum('balance')
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

  def get_ious
    @ious = current_user.ious
  end

  def get_contacts
    @contacts = current_user.contacts
  end
  
end
