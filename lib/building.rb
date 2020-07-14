require "pry"
class Building

  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    #@units << unit  (Had this initially but doesn't keep units inside)
    added_units = []
    added_units << unit
    @units = added_units
    # @units.each do |unit|
  end

  def renters
    #WHY IS @units EMPTY????
    #I understand how to do this in pry. Getting exactly what I want.
    #But can't figure out how to do it with method.
    renter_names = @units.each do |unit|
      unit.renter.name
    end
    # binding.pry
    renter_names
    # add_renter(renter)
  end

  def average_rent
    #takes rent from each unit and divides by total number of units
  end


end
