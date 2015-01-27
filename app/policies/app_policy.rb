class AppPolicy < ApplicationPolicy

  def show?
    user.role == 'admin' || record.user == user
  end

  class Scope < Scope
    def resolve
      if user.present? && user.role == 'admin'
        scope.all 
      elsif user.present?
        scope = user.apps
      end
    end
  end

end