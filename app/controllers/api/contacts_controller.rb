class API::ContactsController < ApplicationController

  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all

    # Search
    @contacts = @contacts.search(params[:q]) if params[:q]

    # Filter for relationship
    @contacts = @contacts.relationship(params[:relationship]) if params[:relationship]

    # Order By
    @contacts = @contacts.order(params[:order].gsub(':',' ')) if params[:order]

    # Paginaton
    if (params[:offset] && params[:limit])
      @contacts = @contacts.page(1).per(params[:limit]).padding(params[:offset])
    else
      @contacts = @contacts.page(1).per(25)
    end

    # GET /contacts/1
    # GET /contacts/1.json
    render json: @contacts, status: :ok
  end

  def show
    # if no changes done then it will return cashing
    render json: @contact if stale?(@contact)
  end

  def destroy
    @contact.destroy
    head :no_content
  end

  def update
    if @contact.update(contact_params)
      head :no_content
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: @contact, status: :created
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust paramets from the scary internet, only allow the white list though
    def contact_params
      params.require(:contact).permit(:name, :email, :twitter)
    end
end
