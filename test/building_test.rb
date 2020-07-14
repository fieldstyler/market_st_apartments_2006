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

end
