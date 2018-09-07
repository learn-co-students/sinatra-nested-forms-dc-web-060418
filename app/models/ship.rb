class Ship

  @@all = []
  def self.all
    @@all
  end

  def self.clear
    all.clear
  end

  attr_accessor :name, :type, :booty

  def initialize(args = {})
    @name = args.fetch("name", "")
    @type = args.fetch("type", "")
    @booty = args.fetch("booty", "")
    @@all << self
  end
end
