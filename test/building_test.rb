require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'
require "pry"

class BuildingTest < MiniTest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_building_starts_with_no_units
    building = Building.new
    assert_equal [], building.units
  end

  def test_building_can_add_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    assert_equal [], building.units
    building.add_unit(unit1)
    assert_equal [unit1], building.units
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units
  end

  def test_building_starts_with_no_renters
    building = Building.new
    assert_equal [], building.renters
  end

  def test_building_can_add_renters
    building = Building.new
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    unit1.add_renter(renter1)
    unit2.add_renter(renter2)
    binding.pry
    assert_equal renter1, unit1.renter
    assert_equal ["Aurora"], building.renters
    # assert_equal renter2, unit2.renter
    # assert_equal ["Aurora", "Tim"], building.renters
  end

end
