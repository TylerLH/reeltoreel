class Notification < ActiveRecord::Base

  validates :title, :uniqueness => true

  attr_accessible :title

  def create

  end

end
