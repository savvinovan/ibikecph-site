module TravelPlanner
  def self.get_journey(loc)
    journey = Journey.new(options(loc))
    journey.trips
  end

  def self.options(loc)
    { loc: loc.map {|coord| coord.split(',')}.flatten,
      originCoordName: '\0',
      destCoordName: '\0',
      useBicycle: 1,
      maxCyclingDistanceDep: 20000,
      maxCyclingDistanceDest: 20000,
      format: 'json' }
  end
end