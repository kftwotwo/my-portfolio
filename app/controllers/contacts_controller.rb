class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Your email was sent!"
      ContactNotifier.send_email(@contact).deliver
      redirect_to root_url
    else
      flash[:error] = "You did not filled out the form correctly, try again."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :subject, :message)
  end
end
