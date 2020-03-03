class Scope < Scope
    def resolve
      user.bookings_as_renter
    end
  end
