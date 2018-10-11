require 'pry'
class Owner
  attr_accessor :pets, :name, :mood

  attr_reader :species, :say_species
  
  @@all_owners = []

  def initialize(name)
    @name = name
    @@all_owners << self
    
    @pets = {fishes: [], cats: [], dogs: []}

    @species = "human"
  end 

  def self.all
    @@all_owners
  end 

  def self.count
    @@all_owners.length
  end 
  
  def self.reset_all
    @@all_owners.clear
  end

  def say_species
    "I am a #{@species}."
  end 

  def name
    @name
  end

  def buy_fish(name)
    name = Fish.new(name)
    self.pets[:fishes] << name

  end 


  def buy_cat(name)
    name = Cat.new(name)
    self.pets[:cats] << name

  end 


  def buy_dog(name)
    name = Dog.new(name)
    self.pets[:dogs] << name
  end 

  def walk_dogs
    self.pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end    
  end 

  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end 
  end 

  def play_with_cats
    self.pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
    
  def sell_pets
    self.pets.collect do |type, array_of_pets|
      array_of_pets.each do |pet|
        pet.mood = "nervous"
      end
    end 
    self.pets.clear 
  end
  
end

def list_pets
 "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
end
  



end