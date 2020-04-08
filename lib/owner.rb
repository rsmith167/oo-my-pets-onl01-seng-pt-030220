class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all = []
  end
  def say_species
    return "I am a human."
  end
  def cats
    Cat.all.collect{|x| x.owner == self}
  end
end