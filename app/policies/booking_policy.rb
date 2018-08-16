class BookingPolicy < ApplicationPolicy


  def index?
    true
  end

  # note no need for the new action as app policy refers new to create.
  def create?
    true
  end

  # note no need for the edit action as app policy refers new to update.
  def edit?
    true
  end


  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end
end
