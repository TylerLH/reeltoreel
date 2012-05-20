class NotificationsController < ApplicationController

  def notify
  end

  def create
    @message = params[:notifications][:message]
    @account = @@client.account
    @account.sms.messages.create({:from => '+14155992671', :to => '7036384111', :body => @message})
    format.html { redirect_to root_path, notice: 'Successfully sent SMS messages.' }
  end
end
