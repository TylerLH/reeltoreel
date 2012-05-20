class RoleUser < ActiveRecord::Base
  belongs_to :role
  belongs_to :user

  attr_accessible :user_id, :role_id
end
