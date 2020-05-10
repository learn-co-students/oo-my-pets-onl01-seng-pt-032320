require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species

@@all = [] #set an empty array so instances can be inserted there

def initialize(name)
  @name = name
  @species = "human"
  @@all << self #all instances of the class object (self) will be added to the @@all which has an empty array and now carries the self instances
  #binding.pry
end

def say_species
  @species = "I am a human."
  @species

end

def self.all
@@all
#binding.pry
end

def self.count
@@all.count
end

def self.reset_all
@@all.clear
end

def cats
  Cat.all.select do |cat_object|
    cat_object.owner == self
    #binding.pry
end
end


def dogs
  Dog.all.select do |dog_object|
    dog_object.owner == self
  end
end


def buy_cat(name)
  owner = self
Cat.new(name, owner)
end

def buy_dog(name)
  owner = self
  Dog.new(name, owner)

end

def walk_dogs
  #binding.pry
self.dogs.each do |dog|
  #^ Here we use self to refer to a specific owner and use the dogs method to call on a specific dog that the owner prefers to walk
  #Then we ieterate over a specific dog and pull that specific dog.
dog.mood = "happy"
#^ We then use mood method from the dog's file and then change it's mood by setting it to be a variable.
end
end

def feed_cats
self.cats.each do |cat|
cat.mood = "happy"
  end

  end

def sell_pets
pets = self.cats + self.dogs
pets.each do |pet|
pet.mood = "nervous"
pet.owner = nil
#binding.pry
end

def list_pets
 "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end


end

end
