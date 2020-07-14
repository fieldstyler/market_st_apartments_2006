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
end
