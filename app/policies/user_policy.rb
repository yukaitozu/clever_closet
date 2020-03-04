class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true
  end

  def request_friendship?
    true
  end

  def accept_request?
    true
  end

  def decline_request?
    true
  end

  def remove_friend?
    true
  end
end
