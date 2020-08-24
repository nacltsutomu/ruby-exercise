puts ["コーヒー","カフェラテ"].size

puts [1,2,3,4,5].sum

p ["モカ","カフェラテ","モカ"].uniq

p [1,2].clear

a = [1,2]
a.clear
p a

puts ["カフェラテ","モカ","カプチーノ"].sample

puts ["大吉","中吉","末吉","凶"].sample

p [100,50,300].sort

p [100,50,300].sort.reverse

p "cba".reverse

p ["100","50","300"].join(",")

p "100,50,300".split(",")

a = [1,2,3].map do |x|
 x*3
end
p a

a = ["abc","xyz"].map do |x|
 x.reverse
end
p a

a = ["aya","achi","Tama"].map do |x|
  x.downcase
end
a = a.sort
p a