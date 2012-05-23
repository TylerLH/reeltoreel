class TicketsController < ApplicationController
	def index
	end 


	def create

    respond_to do |format|
      if Tickets.purchased(params[:tickets]).deliver
        format.html { redirect_to root_path }
      else
        format.html { render action: contact_index_path }
      end
    end
  end


end
