def cyumon
  puts "カフェラテをください"
end
cyumon

def cyumon
  "カフェラテをください"
end
puts cyumon

def cyumon
  "カフェラテをください"
end
result = cyumon
puts result

def area
  puts 3 * 3
end
area

def area
  3 * 3
end
puts area

def area(x)
  x * x
end
puts area(3)

def dice
  [1,2,3,4,5,6].sample
end
puts dice

def order(item)
  "#{item}をください"
end
puts order("カフェラテ")
puts order("モカ")

#難しい１
def dice
  result =  [1,2,3,4,5,6].sample
  unless result == 1
    return result
  end
  p result
  puts "もう一回"
  [1,2,3,4,5,6].sample
end
puts dice

def price(item:)
  case item
    when "コーヒー"
      300
    when "カフェラテ"
      400
  end
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ")

#難しい２
def price(item:)
  a = {"コーヒー" => 300,"カフェラテ" => 400}
  a[item]
end
puts price(item: "コーヒー")

#難しい３
def price(item:,size:)
  a = {"コーヒー" => 300,"カフェラテ" => 400}
  b = {"ショート" => 0,"トール" => 50,"ベンティー" => 100}
  a[item] + b[size]
end
puts price(item: "カフェラテ",size: "ベンティー")

def price(item:,size: "ショート")
  a = {"コーヒー" => 300,"カフェラテ" => 400}
  b = {"ショート" => 0,"トール" => 50,"ベンティー" => 100}
  a[item] + b[size]
end
puts price(item: "カフェラテ",size: "ベンティー")
puts price(item: "カフェラテ")

def order(drink)
  puts "#{drink}をください"
end
order("コーヒー")   
