class ContactController < ApplicationController

  def index
  end

  def create

    respond_to do |format|
      if Contact.contact_email(params[:contact]).deliver
        format.html { redirect_to root_path, notice: 'Successfully emailed Scott Downie.' }
      else
        format.html { render action: contact_index_path }
      end
    end
  end

end
