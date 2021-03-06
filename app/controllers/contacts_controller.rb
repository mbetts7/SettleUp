class ContactsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @contacts = current_user.contacts
  end

  def new
    @contact = Contact.new
  end

  def create
    new_contact = params.require(:contact).permit(:first_name, :last_name, :email, :phone)
    @contact = Contact.create(new_contact)
    @contact.user_id = current_user.id
    @contact.save

    redirect_to(new_iou_path)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes(require(:contact).permit(:first_name, :last_name, :email, :phone))
    redirect_to(@contact)
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    
    redirect_to(contacts_path)
  end

end
