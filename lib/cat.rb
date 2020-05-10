require 'pry'
class Cat
  # code goes here
attr_accessor  :owner, :mood # Here both owner and mood can be changed (through the hidden writer methods)
attr_reader :name #Here this cannot be changed

@@all = []

def initialize(name, owner) #Name & Owner needs to be both in the argument as they're both being initialize and yet owner can be modified
  #both as a reader and writter while the name cannot be modified and therefore needs a reader only.
  @name = name
  @owner = owner
  @mood = "nervous" #Mood is being initialized with a specific function
  @@all << self
end

def self.all
  @@all
end

end
