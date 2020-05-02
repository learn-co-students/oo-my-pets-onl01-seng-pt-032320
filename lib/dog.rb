# Dog
#   Instance methods
#     initializes with a name and an Owner
#     can change its owner
#     can't change its name
#     initializes with a nervous mood
#     can change its mood


class Dog
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end

  # Class methods
  #   knows all the dogs

  def self.all
    @@all
  end
end
