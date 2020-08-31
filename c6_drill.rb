menu = {coffee: 300,caffe_latte: 400}
puts menu[:caffe_latte]

menu = {"モカ" => "チョコレートシロップとミルク入り","カフェラテ" => "ミルク入り"}
puts menu["モカ"]

menu = {coffee: 300,caffe_latte: 400}
menu[:tea] = 300
p menu

menu = {coffee: 300,caffe_latte: 400}
menu.delete(:coffee)
p menu

menu = {coffee: 300,caffe_latte: 400}
unless menu[:tea]
  puts "紅茶はありませんか？"
end

menu = {coffee: 300,caffe_latte: 400}
puts "紅茶はありませんか？" unless menu[:tea]

menu = {coffee: 300,caffe_latte: 400}
if menu[:caffe_latte] <= 500
  puts "カフェラテください"
end

menu = {coffee: 300,caffe_latte: 400}
puts "カフェラテください" if menu[:caffe_latte] <= 500

#難しい１
hash ={}
hash.default = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] += 1
end
p hash

menu = {"コーヒー" => 300,"カフェラテ" => 400}
menu.each do |key,value|
  puts "#{key} - #{value}円"
end

menu = {"コーヒー" => 300,"カフェラテ" => 400}
menu.each do |key,value|
  if value >= 350
    puts "#{key} - #{value}円"
  end
end

menu = {"コーヒー" => 300,"カフェラテ" => 400}
menu.each do |key,value|
  puts "#{key} - #{value}円" if value >= 350
end

menu = {}
menu.each do |key,value|
  puts "#{key}-#{value}円"
end

#難しい２
menu = {"コーヒー" => 300,"カフェラテ" => 400}
keys = []
menu.each do |key,value|
  keys.push(key)
end
p keys

menu = {"コーヒー" => 300,"カフェラテ" => 400}
p menu.keys
