class Dog
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
  end
  
  def self.all
    @@all
  end
end