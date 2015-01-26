class EventPolicy < ApplicationPolicy
  def index?
    record.user == user
  end

end