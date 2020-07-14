require "pry"
class Apartment

  attr_reader :apartment_info,
              :renter
  def initialize(apartment_info)
    @apartment_info = apartment_info
    @renter = renter
  end

  def number
    apartment_info[:number]
  end

  def monthly_rent
    apartment_info[:monthly_rent]
  end

  def bathrooms
    apartment_info[:bathrooms]
  end

  def bedrooms
    apartment_info[:bedrooms]
  end

  def add_renter(renter)
    apartment_occupant = []
    apartment_occupant << renter
    @renter = apartment_occupant
    #I feel like this isn't dynamic enough which is why
    #my renters method fails in building class.
    #Later added the following code
    renter_names = @renter.each do |renter|
      renter.name
    end
    renter_names
  end
end
