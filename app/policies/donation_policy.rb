class DonationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      record.user == user
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  
end