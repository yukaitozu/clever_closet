class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def donate?
    !record.donated?
  end

  def new?
    true
  end

  def create?
    true
  end
end
