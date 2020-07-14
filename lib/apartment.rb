require "pry"
class Apartment

  attr_reader :apartment_info
  def initialize(apartment_info)
    @apartment_info = apartment_info
  end

  def number
    apartment_info[:number]
  end
end
