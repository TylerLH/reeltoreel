class Subscribe < ActiveRecord::Base
	validates :name, :presence => true 
	validates :phone, :presence => true
	validates :phone, :uniqueness => true
	validates :phone, :format => { :with => /^\d{10}$/, :on => :create }
end
