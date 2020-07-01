class JourneyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user).order(created_at: :desc)
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def main?
    user.present?
  end
end
