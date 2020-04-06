require 'pry'

class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end

  def buy_cat(cat_name)
    Cat.new(cat_name,self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name,self)
  end

  def walk_dogs
    Dog.all.select { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.select { |cat| cat.mood = "happy" }
  end

  def sell_pets
    Cat.all.select do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    Dog.all.select do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
