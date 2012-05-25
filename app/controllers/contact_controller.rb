class ContactController < ApplicationController

  def index
  end

  def create

    respond_to do |format|
      if Contact.contact_email(params[:contact]).deliver
        format.html { redirect_to root_path, notice: 'Your email has been sent to Reel to Real Theaters.' }
      else
        format.html { render action: contact_index_path }
      end
    end
  end

end
