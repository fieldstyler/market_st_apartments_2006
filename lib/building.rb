require "pry"
class Building

  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units = @units << unit
  end

  def renters
    add_unit(@units)
    # @units = building.units
    renter_names = @units.each do |unit|
      unit.renter[0].name
    end
    binding.pry
    renter_names
    # add_renter(renter)
  end
end
