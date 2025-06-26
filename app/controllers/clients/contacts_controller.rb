class Clients::ContactsController < ApplicationController
  before_action :set_client
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = @client.contacts
  end

  def show
  end

  def new
    @contact = @client.contacts.build
  end

  def create
    @contact = @client.contacts.build(contact_params)

    if @contact.save
      redirect_to client_contact_path(@client, @contact), notice: 'Contact was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to client_contact_path(@client, @contact), notice: 'Contact was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contact.destroy
    redirect_to client_contacts_url(@client), notice: 'Contact was successfully destroyed.'
  end

  private

  def set_client
    @client = Client.find(params[:client_id])
  end

  def set_contact
    @contact = @client.contacts.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :position)
  end
end