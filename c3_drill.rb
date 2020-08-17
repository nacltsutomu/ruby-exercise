a = 2
puts a < 365

a = 2
puts a == 1 + 1

season = "春"
unless season == "夏"
  puts "あんまんたべたい"
end
season = "春"
if season != "夏"
  puts "あんまんたべたい！"
end

season = "夏"
if season == "夏"
  puts "かき氷たべたい"
  puts "麦茶のみたい"
end

wallet = 100
if wallet >= 120
  puts "ジュースを買おう"
else
  puts "お金じゃ買えない幸せがたくさんあるんだ"
end

x = 200
if x <= 0 || x >= 100
  puts "範囲外です"
end

x = 0
y = -1
z = 1
if x > 0 || y > 0 || z > 0
  puts "正の数です"
end

season = "春"
case season
when "春"
  puts "アイスを買っていこう"
when "夏"
  puts "かき氷買ってこう！"
else
  puts "あんまん買ってこう！"
end

2.times do
  puts "カフェラテ"
  2.times do
    puts "モカ"
  end
end
puts "フラペチーノ"

2.times {
    puts "カフェラテ！"
    2.times {
      puts "モカ！"
    }
}
puts "フラペチーノ！"
