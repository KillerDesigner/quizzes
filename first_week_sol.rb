                                                             
#     ,o888888o.     8 8888      88  8 8888  8888888888',8888' 
#  . 8888     `88.   8 8888      88  8 8888         ,8',8888'  
# ,8 8888       `8b  8 8888      88  8 8888        ,8',8888'   
# 88 8888        `8b 8 8888      88  8 8888       ,8',8888'    
# 88 8888         88 8 8888      88  8 8888      ,8',8888'     
# 88 8888     `8. 88 8 8888      88  8 8888     ,8',8888'      
# 88 8888      `8,8P 8 8888      88  8 8888    ,8',8888'       
# `8 8888       ;8P  ` 8888     ,8P  8 8888   ,8',8888'        
#  ` 8888     ,88'8.   8888   ,d8P   8 8888  ,8',8888'         
#     `8888888P'  `8.   `Y88888P'    8 8888 ,8',8888888888888  

#     
# This is our first week's quiz! Let's find out what we know.
# 

# The ideal range of your motor cycle speed 20 - 55. Over 55 is SCAREE!
# Check if your moto_speed is within that range using boolean (&&, ||)
# operators and comparison operators (== =< >= !=)

moto_speed >= 20 && moto_speed <= 55

# if your moto_speed variable is in the right range print out a good
# message, aka "Wheee!" Otherwise print out an appropriate response.
# Your code goes below:

if(moto_speed >= 20) && (moto_speed <= 55) 
  puts "Wheee!"
elsif (moto_speed <= 20)
  puts "I'm falling over!"
else 
  puts "SCAREE!"
end

# Make a method that checks your moto speed when called

def check_speed (mph)
  if(moto_speed >= 20) && (moto_speed <= 55) 
    puts "Wheee!"
  elsif (moto_speed <= 20)
	  puts "I'm falling over!"
  else 
	  puts "SCAREE!"
  end
end

# Make a method to start your bike! It should print out "vrooom!"
# when it's called

def make_vroom 
  puts "vrooom!"
end

# You're the leader of the pack. 
# Create an Array of motorcycle makes!

my_convoy = ['Harley', 'BMW', 'Triumph', 'Vespa']

#alternate solution: 
my_convoy = %w{ harley bmw triump vespa }
# Loop through your convoy and print out each motorcycle's make
# Your code below:

my_convoy.each { |moto| p moto }

# You need to keep track of your gang. 
# Create a separate Hash containing riders' info. like so:
# fred = { name, helmet, height }
# Then a larger Hash containing all riders
# my_gang = {rider hashes}

harry = { :name => "Harry", :helmet => "blue", :height => 187 }
meg = { :name => "Megan", :helmet => "winged", :height => 176 }
hodor = { :name => "Hodor!", :helmet => "viking", :height => 200 }
jasper = { :name => "Jasper", :helmet => "red", :height => 165 }

my_gang = { :rider1 => harry, :rider2 => meg, :rider3 => hodor, :rider4 => jasper }

# Loop through your gang and print out each rider's 
# name & helmet color using a block. Your code below:

my_gang.each do |key, value|
  puts value[:name] + " " + value[:helmet]
end

# Now for each rider add their motorcycle to their Hash, 
# assume they are in the same order as your Array
# use a loop. Your code below:

i = 0
my_gang.each do |key, value| 	
  value[:moto] = my_convoy[i]
  p i
  i += 1 
end

# Define an Class to represent each gang member 
# It should include methods to set their name and motorcyle make
# When say_name(name) is called the rider's name is printed out

class Rider

  attr_accessor :name

  def initialize(name, model)
  	@name = name
  	@model = model
  end

  def say_name(name)
  	puts "my name is #{name}"
  end
end

# Final Challenge:
# 1. initialize 3 new Riders
# 2. add these to a Hash
# 3. loop through the Hash and call say_name for each rider.
# Hint: you will need an attr_accessor in Rider 
# Your code below:

larry = Rider.new("Larry", "BMW")
barry = Rider.new("Barry", "Triumph")
moe = Rider.new("Moe", "Vespa")

riders = { :rider1 => larry, :rider2 => barry, :rider3 => moe }

riders.each { |k, v| puts v.say_name(v.name) }
