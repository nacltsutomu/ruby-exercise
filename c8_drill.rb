p ({:coffee => 300,:caffee_latte => 400}).class

p Hash.new

class CaffeLatte
end
caffelatte = CaffeLatte.new
p caffelatte.class

class Item
  def name
    "チーズケーキ"
  end
end
item = Item.new
puts item.name

class Item
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end
item = Item.new
item.name=("チーズケーキ")
puts item.name

class Item
  def initialize
    puts "商品を扱うオブジェクト"
  end
end
Item.new

class Item
  def initialize(aaa)
    @name = aaa
  end
  def name
    @name
  end
end
item1 = Item.new("マフィン")
item2 = Item.new("スコーン")
puts item1.name
puts item2.name

class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end
puts Drink.todays_special

class Item2
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end
class Food < Item2
end
food = Food.new
food.name=("チーズケーキ")
puts food.name
