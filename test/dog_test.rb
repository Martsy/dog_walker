require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class PetTest < Minitest::Test
  def setup
    @sodie = Dog.new("Sodie", 9, "Shih-Tzu", true)
    @max = Dog.new("Max", 11, "Cocker Spaniel", false)
  end

  def test_pet_class_exists
    assert_instance_of Dog, @sodie
  end
end
