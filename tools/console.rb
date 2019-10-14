require_relative '../config/environment.rb'

require 'pry'
def reload
  load 'config/environment.rb'
end

potter_fans = Cult.new("potter","hogwarts","abrakadabra", 123)
# :name, :location, :year, :slogan, :founding_year

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
