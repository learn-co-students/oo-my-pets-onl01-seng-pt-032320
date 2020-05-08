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


end
