class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @contact = Contact.new(first_name: params[:first_name_param], last_name: params[:last_name_param], email: params[:email_param], phone_number: params[:phone_number_param])
    @contact.save
    render "create.html.erb"
  end
  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render "destroy.html.erb"
  end
  def edit
    @contact = Contact.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def update
    @contact= Contact.find_by(id: params[:id])
    @contact.update(first_name: params[:first_name_param], last_name: params[:last_name_param], email: params[:email_param], phone_number: params[:phone_number_param])
    @contact.save
    render "update.html.erb"
  end
  def show
    @contact = Contact.find_by(id: params[:id])
    render "show.html.erb"
  end
  def all_johns
    @contacts = Contact.all_johns
    render "index.html.erb"
  end
end
