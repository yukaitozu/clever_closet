class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve

    end
  end

  def show?
    true
  end
end
