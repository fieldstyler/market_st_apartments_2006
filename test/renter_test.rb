require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require "pry"

class RenterTest < MiniTest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")
    assert_instance_of Renter, renter1
  end

  def test_renter_has_a_name
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

end
