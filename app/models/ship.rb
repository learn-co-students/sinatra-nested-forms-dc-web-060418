class Ship
  attr_accessor :name, :type, :booty

  @@all =[]

  def self.all
    @@all
  end

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    @@all<< self
  end

  def self.clear
    self.all.clear
  end
end
