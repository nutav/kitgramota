class Ability
  include CanCan::Ability

  def initialize(admin)

    if admin 
      can :manage, :all
    else  
      can :read, :all
    end 

  end
      
end