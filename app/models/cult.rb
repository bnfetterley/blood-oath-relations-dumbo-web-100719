class Cult
  
@@all = []
    
  attr_reader :name, :location, :slogan, :founding_year
  
   def initialize(name, location, slogan, founding_year)
    @name = name
    @location = location
    @slogan = slogan
    @founding_year = founding_year
    @@all << self
  end
  
  def recruit_follower(follower)
    BloadOath.new(follower, self, initation_date)
  end
  
  def cult_population
    followers_count = BloadOath.all.each do |cult|
    cult.followers
  end
    followers_count.count
end
  
#   Cult#cult_population
# returns a Fixnum that is the number of followers in this cult
 
def self.find_by_name(name)
  Self.all.each do |cult|
    cult.find?(name)
end
end

def self.find_by_location(location)
  self.all.map each do |cult|
    cult.location 
end
end

# Cult.find_by_location
# takes a String argument that is a location and returns an Array of cults that are in that location

def self.find_by_location(founding_year)
  self.all.map each do |cult|
    cult.founding_year
end
end

# Cult.find_by_founding_year
# takes a Fixnum argument that is a year and returns all of the cults founded in that year

 def self.all
   @@all
end
  
end 