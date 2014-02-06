class ContactsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @contacts = current_user.contacts
    # @receivable_ious = current_user.iouscontacts.where(rec_pay: 'receivable', user_id: current_user.id).sum('balance')
  end

  def new
    @contact = Contact.new
  end

  def create
    new_contact = params.require(:contact).permit(:first_name, :last_name, :email, :phone)
    @contact = Contact.create(new_contact)
    @contact.user_id = current_user.id
    @contact.save

    redirect_to "/contacts"
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes(params[:contact])
    render :show
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.delete
    redirect_to(ious_path)
  end

end
