class PetPolicy < ApplicationPolicy

  def index?
    true
  end

  def create?
    true
  end

  class Scope < Scope
    def resolve
     Pet.all
     # Pet.where(availble: true)
     # scope.where(available: true).or.where(admin: true)
    end
  end
end
