class Pirate

  @@all = []
  def self.all
    @@all
  end

  attr_accessor :name, :weight, :height

  def initialize(args = {})
    @name = args.fetch("name", "")
    @weight = args.fetch("weight", "")
    @height = args.fetch("height", "")
    @@all << self
  end
end
