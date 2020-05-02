# Owner
#   Instance methods
#     #name
#       can have a name (FAILED - 1)
#       cannot change owner's name (FAILED - 2)
#     #species
#       initializes with species set to human (FAILED - 3)
#       can't change its species (FAILED - 4)
#     #say_species
#       can say its species (FAILED - 5)
#   Class methods
#     .all returns all instances of Owner that have been created (FAILED - 6)
#     .count returns the number of owners that have been created (FAILED - 7)
#     .reset_all can reset the owners that have been created
#
# Instance methods
#   #name
#     can have a name
#     cannot change owner's name
require 'pry'

class Owner
  attr_reader :name, :species, :say_species

  @@all = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  # #species
  #   initializes with species set to human
  #   can't change its species

  def species
    "#{@species}"
  end

  # #say_species
  #     can say its species
  def say_species
    "I am a #{@species}."
  end
  #
  # Class methods
  #  .all returns all instances of Owner that have been created

  def self.all
    @@all
  end

  # .count returns the number of owners that have been created

  def self.count
    self.all.count
  end

  # .reset_all can reset the owners(all) that have been created
  def self.reset_all
    self.all.clear
  end
  #
  # Associations
  # Owner instance methods
  #   #cats
  #     returnsa a collection of ALL the cats that belong to the owner

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  # #dogs
  #     returns a collection of all the dogs that belong to the owner

  def dogs
    Dog.all.select {|d| d.owner == self}
  end

  # #buy_cat
  # can buy a cat that is an instance of the Cat class
  # knows about its cats

  def buy_cat(name)
    Cat.new(name, self)
  end

  # #buy_dog
  #   can buy a dog that is an instance of the Dog class
  #   knows about its dogs

  def buy_dog(name)
    Dog.new(name, self)
  end

  # #walk_dogs
  #     walks the dogs(plural so all dogs!) which makes the dogs' moods happy

  #we can call .dogs because we made a method that returns all instances of dogs

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  # #feed_cats
  #     feeds cats which makes the cats' moods happy

  def feed_cats
    self.cats.each {|c| c.mood = "happy"}
  end

  # #sell_pets
  #   can sell all its pets, which makes them nervous
  #   can sell all its pets, which leaves them without an owner

  def sell_pets
    pets = dogs + cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  # #list_pets
  #    can list off its pets

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end
