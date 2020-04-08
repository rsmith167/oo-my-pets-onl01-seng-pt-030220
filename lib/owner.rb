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
  def dogs
    Dog.all.collect{|x| x.owner == self}
  end
  def buy_cat(name, owner)
    Cat.new(name, self)
  end
  def buy_dog(name, owner)
    Dog.new(name, self)
  end
  def walk_dogs
    Dog.all.each {|x| x.mood = "happy"}
  end
  def feed_cats
     Cat.all.each {|x| x.mood = "happy"}
  end
  def sell_pets
    Dog.all.each {|x| x.mood = "nervous"
      x.owner = nil
    }
    Cat.all.each {|x| 
    x.mood = "nervous"
    x.owner = nil
    }
  end
  def list_pets
    all_pets = Cat.all
    all_pets << Dog.all
    all_pets
  end
    
end