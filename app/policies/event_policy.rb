class EventPolicy < ApplicationPolicy


  class Scope < Scope
   def resolve
     if user.present? && user.admin?
       scope.all 
     end
   end
  end
end