require 'set' # prevents duplicates

class Walker
  attr_reader  :name, :poop_bags, :clients

  def initialize(walker_info)
    @name      = walker_info[:name]
    @poop_bags = walker_info[:poop_bags]
    @clients   = [] # .to_set
  end

  def add_client(dogs)
    @clients << dogs
  end

  def walks_dog(dog, poop_bags)
   walks_dog = [dog.walk, @poop_bags -= 1]
  end

  def count_clients
    @clients.count
  end

  def puppy_clients
    @clients.select { |dog| dog.age < 3 }
  end

  def elderly_clients
   @clients.select { |dog| dog.age > 3 }
  end

  def client_names
    @clients.collect { |dog| dog.name }
  end

  def client_names_ending_in_y_or_ie
    @clients.collect { |dog| dog.name.end_with? ("ie" || "y");
      return dog.name }
  end

  def specific_breed_of_client(breed)
    @clients.select do |dog| if dog.breed == breed
      return dog.name
      end
    end
  end

  def clients_organized_by_breed
    @clients.group_by do |dog| dog.breed
    end
  end
end
