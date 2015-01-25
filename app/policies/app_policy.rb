class AppPolicy < ApplicationPolicy

  def index?
    user.present?
  end

end