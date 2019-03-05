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

  def test_pet_has_a_name
    assert_equal "Max", @max.name
    assert_equal "Sodie", @sodie.name
  end

  def test_pet_has_an_age
    assert_equal 11, @max.age
    assert_equal 9, @sodie.age
  end

  def test_pet_has_a_breed
    assert_equal "Shih-Tzu", @sodie.breed
    assert_equal "Cocker Spaniel", @max.breed
  end

  def test_if_pet_is_a_small_breed
    assert_equal true, @sodie.small_breed
    assert_equal false, @max.small_breed
  end

  def test_pet_starts_with_zero_walks
    assert_equal 0, @sodie.walks
  end

  def test_pet_can_add_a_walk
    @sodie.walk
    assert_equal 1, @sodie.walks
  end

  def test_pet_can_add_another_walk
    @sodie.walk
    @sodie.walk
    assert_equal 2, @sodie.walks
  end

  def test_pet_can_bark
    assert_equal "Yap!", @sodie.bark
    assert_equal "ROOF", @max.bark
  end
end
