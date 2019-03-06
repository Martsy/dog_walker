require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'
require './lib/walker'

class WalkerTest < Minitest::Test
  def setup
    @walker = Walker.new({name: "Joey", poop_bags: 6})
    @sodie  = Dog.new("Sodie", 9, "Shih-Tzu", true)
    @max    = Dog.new("Max", 11, "Cocker Spaniel", false)
    @oscar  = Dog.new("Oscar", 1, "Shih-Tzu", true)
    @joey   = @sodie.walk
  end

  def test_walker_class_exists
    assert_instance_of Walker, @walker
  end

  def test_walker_has_a_name
    assert_equal "Joey", @walker.name
  end

  def test_walker_has_six_poop_bags
    assert_equal 6, @walker.poop_bags
  end

  def test_walker_starts_with_no_clients
    assert_equal [], @walker.clients
  end

  def test_walker_can_add_dog_objects
    @walker.add_client(@sodie)
    @walker.add_client(@max)
    @walker.add_client(@oscar)
    assert_equal [@sodie, @max, @oscar], @walker.clients
  end

  def test_increase_dog_walks_and_decrease_poop_bags
    assert_equal [1, 5], @walker.walks_dog(@sodie, @poop_bags)
  end

  def test_can_count_number_of_clients
    @walker.add_client(@sodie)
    @walker.add_client(@max)
    @walker.add_client(@oscar)
    assert_equal 3, @walker.count_clients
  end

  def test_walker_can_list_all_puppy_clients
    @walker.add_client(@sodie)
    @walker.add_client(@max)
    @walker.add_client(@oscar)
    assert_equal ["Oscar"], @walker.puppy_clients(@oscar)
  end

  def test_walker_can_list_all_elderly_clients
    @walker.add_client(@sodie)
    @walker.add_client(@max)
    @walker.add_client(@oscar)
    assert_equal ["Sodie","Max"], @walker.elderly_clients(@sodie, @max)
  end
end
