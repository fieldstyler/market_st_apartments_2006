require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require "pry"

class ApartmentTest < MiniTest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_instance_of Apartment, unit1
  end

  def test_apartment_has_a_number
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1", unit1.number
  end

  def test_apartment_has_monthly_rent
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1200, unit1.monthly_rent
  end

  def test_number_of_bathrooms_in_apartment
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bathrooms
  end

  def test_number_of_bedrooms_in_apartment
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bedrooms
  end
end
