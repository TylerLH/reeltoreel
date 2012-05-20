class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    can :manage, :all if user.has_role? :Admin

    #Global Roles
  end

end
