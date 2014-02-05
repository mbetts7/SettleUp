class ContactsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
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

  def destory
    contact = Contact.find(params[:id])
    contact.delete
    redirect_to(ious_path)
  end

end
