class Dog

  attr_reader :name, :age, :breed, :small_breed

  def initialize(name, age, breed, walks)
    @name        = name
    @age         = age
    @breed       = breed
    @small_breed = small_breed
  end
end
