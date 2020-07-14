require "pry"
class Apartment

  attr_reader :apartment_info
  def initialize(apartment_info)
    @apartment_info = apartment_info
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
