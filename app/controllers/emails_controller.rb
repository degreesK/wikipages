class EmailsController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @email = contact.emails.new
    render('emails/new.html.erb')
  end

  def create
    @email = Email.new(
        :address => params[:address],
        :contact_id => params[:contact_id])
    if @email.save
      render('emails/success.html.erb')
    else
      render('emails/new.html.erb')
    end
  end
end