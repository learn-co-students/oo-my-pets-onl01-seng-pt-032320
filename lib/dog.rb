class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@all = []
  
  def initialize(cat_name, owner)
    @name = cat_name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end