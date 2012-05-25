class Subscribe < ActiveRecord::Base
	validates :name, :presence => true 
	validates :phone, :presence => true
	validates :phone, :uniqueness => true 
end
