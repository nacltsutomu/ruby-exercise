#drinks = ["コーヒー","カフェラテ"]
#p drinks

p  ["コーヒー","カフェラテ"]

drinks = ["コーヒー","カフェラテ","モカ"]
puts drinks[1]
puts drinks.first
puts drinks.last

drinks = ["コーヒー","カフェラテ"]
drinks.push("モカ")
p drinks

numbers = [2,3]
numbers.unshift(1)
p numbers

p1 = [1,2]
p2 = [3,4]
p p1 + p2

drinks = ["ティーラテ","カフェラテ","抹茶ラテ"]
drinks.each do | drink |
  puts drink
end

drinks.each do | drink |
  puts drink + "お願いします"
end

drinks.each do | drink |
  puts "#{drink}お願いします！"
end

numbers = [1,2,3]
sum = 0
numbers.each do | number |
  sum = sum + number
end
puts sum

numbers = [1,2,3]
puts numbers.sum

drinks = []
drinks.each do | drink |
  puts drink
end
