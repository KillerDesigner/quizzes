# create an Array of 4 shoes

shoes = ["flip flops", "cowboy boots", "galoshes", "clogs" ]

# iterate through your Array using each and {}'s
# and show a list of your shoes

shoes.each { |s| puts s }

# create an Array of 4 outfits using Array.new

outfits = Array.new(4)
outfits = ["the spooky nun habit", "nurse crosby getup", "kilt n\' wifebeater", "overalls"]

# iterate through your outfits using a Range and do\end
# and print them out

(0..outfits.length).each do |o| puts outfits[o] end

# Shuffle each Array

s_shoes = shoes.shuffle
outfits = outfits.shuffle

# iterate through your Arrays and puts each outfit with each shoes
# using any form of iteration that floats your boat!

outfits.each do |o| 
  puts "I\'m wearing #{o} with #{s_shoes.shift}"
end

# A friend needs the perfect shoes, give her the last pair

friend_shoes = shoes.pop

# now you need a new pair, so push one in

shoes = shoes.push("riding boots")

# each outfit now needs to have "super duper" added to the front of it
# use a map to do this & make sure it stays that way

outfits = outfits.map { |o| o = "super duper " + o }

# each pair of shoes now needs a "!" after it
# do this using a map, but don't change the original Array

shoes.map { |s| s += "!" }

# Shuffle each Array again then print out a new 
# set of outfits + shoes, mapping a "!" on the end of each

outfits = outfits.shuffle
new_shoes = shoes.shuffle.map { |s| s += '!'}

outfits.each do |o|
  puts "I\'m now wearing #{o} with #{new_shoes.shift}"
end



# 
