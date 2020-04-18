require 'pry'
class Owner
  # code goes here
  attr_reader :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def species
     "human"
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all 
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def walk_dogs
    Dog.all.map do |dog|
      dog.mood = "happy"
    end
  end
#binding.pry
  def feed_cats
    Cat.all.map do |cat|
      cat.mood = "happy"
    end
  end 

  def sell_pets
 self.dogs.map do |dog|
    dog.mood = "nervous"
    dog.owner = nil
  
    self.cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      
    end
  end
end 



def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

end 

end

