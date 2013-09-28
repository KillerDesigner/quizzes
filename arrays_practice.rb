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

# A friend needs some shoes, so give her the last pair

friend_shoes = shoes.pop

# now you need a new pair, so push one in

shoes = shoes.push("riding boots")

# each outfit now needs to have "super duper" added to the front
# use a map to do this & make sure it stays that way

outfits.map! { |o| o = "super duper " + o }

# each pair of shoes now needs a "!" after it
# do this using a map, but don't change the original Array

shoes.map { |s| s += "!" }

# Shuffle each Array again then print out a new 
# set of outfits + shoes, mapping a "!!" on the end of each

outfits = outfits.shuffle
new_shoes = shoes.shuffle.map { |s| s += '!!'}

outfits.each do |o|
  puts "I\'m now wearing #{o} with #{new_shoes.shift}"
end

# Create a big Array called wardrobe by adding your shoes and outfits

wardrobe = shoes + outfits

# iterate through your wardrobe & print the contents using each

wardrobe.each { |w| p w }

# Spring cleaning! slice out 3 elements in the middle
# for donation. Verify wardrobe now contains 5 elements & donation 3

donation = wardrobe.slice(2, 3)
wardrobe -= donation

p donation.length
p wardrobe.length

# You are fickle! Decide to keep donation items using push
# make sure you still just have a big Array and not an 
# Array of Arrays

wardrobe.push(donation)
wardrobe = wardrobe.flatten

# print out each element in your wardrobe with a "OMFG!"
# added to the end of it, do this using each then with map

wardrobe.each do |w|
	puts w += " OMGF!!"
end

wardrobe.map { |w| p w += " OMFG!!"}

# You've joined a cult!
# permanently add "purple " to each item of your wardrobe

wardrobe.map! { |w| w = "purple " + w }


