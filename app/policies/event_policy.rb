class EventPolicy < ApplicationPolicy
  def index?
    
  end

  class Scope < Scope
   def resolve
     if user.present? && user.admin?
       scope.all 
     end
   end
  end
end