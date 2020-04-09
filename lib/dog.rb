class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = Array.new
  
  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all.push(self)
  end
  
  def self.all 
    @@all
  end
end