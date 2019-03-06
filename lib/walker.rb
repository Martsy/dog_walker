require './lib/dog'

class Walker
  attr_reader :dog, :name, :poop_bags, :clients

  def initialize(walker_info)
    @dog       = dog
    @name      = walker_info[:name]
    @poop_bags = walker_info[:poop_bags]
    @clients   = []
  end

  def add_client(dog)
    @clients << dog
  end

  def walks_dog(dog, poop_bags)
   walks_dog = [dog.walks, @poop_bags -= 1]
  end

  def count_clients
    @clients.count # not sure how to do without instance variable???
  end

  def puppy_clients(dog)
    #@clients.find_all do |dog|
    puppy_clients = []
    if dog.age < 3 == true
      return puppy_clients << dog.name
    end
  end

  def elderly_clients(dog)
    elderly_clients = []
    if dog.age < 3 == true
      return elderly_clients << dog.name
    end
  end
end
