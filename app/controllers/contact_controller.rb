class ContactController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.deliver
      redirect_to root_path, notice: "Thanks for contacting us!"
    else
      redirect_to root_path, alert: "There was an error sending your message."
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
