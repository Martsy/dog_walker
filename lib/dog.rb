class Dog

  attr_reader :name, :age, :breed, :small_breed, :walks, :bark

  def initialize(name, age, breed, small_breed)
    @name        = name
    @age         = age
    @breed       = breed
    @small_breed = small_breed
    @walks       = 0
    @bark = bark

  end

  def walk
    @walks += 1
  end

  def bark
    if @small_breed == true
      return "Yap!"
    elsif @small_breed == false
      return "ROOF"
    end
  end

end
