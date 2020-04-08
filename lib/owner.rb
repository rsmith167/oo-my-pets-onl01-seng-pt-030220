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
    collection = []
    Cat.all.collect{|x| if x.owner == self
      collection << x
    end
    }
    collection
  end
  def dogs
    collection = []
    Dog.all.collect{|x| if x.owner == self
      collection << x
    end
    }
    collection
  end
  def buy_cat(name)
    Cat.new(name, self)
  end
  def buy_dog(name)
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
    x = self.dogs.count
    y = self.cats.count
    return "I have #{x} dog(s), and #{y} cat(s)."
  end
    
end