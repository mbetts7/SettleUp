class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index

    @receivable_ious = current_user.ious.where(rec_pay: 'receivable').order('balance DESC', 'name')
    @payable_ious = current_user.ious.where(rec_pay: 'payable').order('balance DESC', 'name')
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

  def destroy
  end

  def get_contacts
    @contacts = current_user.contacts
  end
  
end
