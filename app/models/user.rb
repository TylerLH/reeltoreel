class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles, :join_table => ::RoleUser.table_name

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def has_role?(title)
    raise ArgumentException, "Received an Object instead of title." if title.is_a?(::Role)
    roles.any?{|r| r.title == title.to_s.camelize}
  end

end
