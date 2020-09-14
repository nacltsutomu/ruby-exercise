#13
#クラスに引数を受け取るクラスメソッドを定義する。
class Drink
  def self.name(aaa)
    "#{aaa}をください"
  end
end
puts Drink.name("モカ")

#14
#継承
class Item
  def name=(text)
    @name = text
  end
  def name
    @name
  end
end
class Drinkx < Item
  def size=(text)
    @size = text
  end
  def size
    @size
  end
end
class Drinky < Item
  def cup=(text)
    @cup = text
  end
  def cup
    @cup
  end
end
drinkx = Drinkx.new
drinkx.name=("モカ")
drinkx.size=("tall")
puts "#{drinkx.name} #{drinkx.size}サイズ"

drinky = Drinky.new
drinky.name=("ブレンド")
drinky.cup=("マグ")
puts "#{drinky.name} #{drinky.cup}カップ"

#15
#クラスのメソッド定義の中からレシーバを省略して
#呼び出す形だけを許す。
class Cafe
  def staff
    makanai
  end
  private   #=> これ以降に定義したメソッドは
            #=> privateなメソッドになる 
  def makanai
    "店員用メニュー"
  end
end
cafe = Cafe.new
puts cafe.staff
puts cafe.makanai
# <hint>
# cafe.staff
# staffメソッドの中で同じクラスのmakanaiメソッドを呼び出す
# cafe.makanai
# privateなメソッドはレシーバを指定して呼び出すとエラーとなる
