#1
#クラスにメソッドを定義する。
class Drink
  def name
    "モカ"
  end
end
drink = Drink.new
puts drink.name

#2
#クラスに引数を受け取るメソッドを定義する。
class Drink
  def name(aaa)
    "#{aaa}をください"
  end
end
drink = Drink.new
puts drink.name("モカ")

#3
#クラスに複数のメソッドを定義する。
#そのうちの１つのメソッドから別のメソッドを呼び出す。
class Drink
  def name
    "モカ" + topping
  end
  def topping
    "エスプレッソ"
  end
end
drink = Drink.new
puts drink.name
# <hint>
# nameメソッドの中で同じクラスのtoppingメソッドを呼んで、
# その戻り値を利用している。
# このようにクラスに定義されたメソッドの中で同じクラスの
# 他のメソッドを呼ぶ時はメソッド名をそのまま書く事で
# 呼び出せる。

#4
#クラスに複数のメソッドを定義する。
#複数のメソッドをまたいで使う事ができるインスタンス変数を
#利用してメソッドを呼び出す。
class Drink
  def name(aaa)
    puts "#{aaa}をください"
    @order = aaa
  end
  def rename
    "#{@order}をもう一杯ください"
  end
end
drink = Drink.new
drink.name("モカ")   #=> インスタンス変数に代入される
puts drink.rename
# <hint>
# オブジェクトdrinkが存在する間は@orderを
# 使う事ができる。

drink1 = Drink.new
drink1.name("コーラ")
puts drink1.rename
# <hint>
# インスタンス変数はオブジェクト毎に存在する変数で、
# 同じクラスに書かれているインスタンス変数でもオブジェクトが
# 別ならば、別のインスタンス変数になる。

#5
#クラスにインスタンス変数を取得するメソッドを定義する。
class Drink
  def name(aaa)
    puts "#{aaa}をください"
    @order = aaa
  end
  def order   #=> インスタンス変数名から@を取り除いた名前にする
    @order
  end
end
drink = Drink.new
drink.name("モカ")   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得

#6
#クラスにインスタンス変数を取得するメソッドを定義する。
#インスタンス変数へ代入するメソッド
class Drink
  def order=(aaa)   #=> インスタンス変数名から@を取り、末尾に=を加えた名前にする
    @order = aaa
  end
  def order   #=> インスタンス変数名から@を取り除いた名前にする
    @order
  end
end
drink = Drink.new
drink.order=("モカ")   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得

#7
#クラスにinitializeメソッドを定義する。
class Drink
  def initialize
    puts "モカ"
  end
end
Drink.new
# <hint>
# newメソッドが呼ばれると、オブジェクトが作られるときに
# 自動でinitializeメソッドが呼ばれる。

#8
#クラスにinitializeメソッドを定義する。
#インスタンス変数を取得するメソッドを定義する。
#インスタンス変数に初期値を設定する
class Drink
  def initialize
    @order = "モカ"
  end
  def order
    @order
  end
end
drink = Drink.new   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得
# <hint>
# newメソッドが呼ばれると、オブジェクトが作られるときに
# 自動でinitializeメソッドが呼ばれ、@orderに"モカ"が代入される。

#9
#クラスに引数を受け取るinitializeメソッドを定義する。
#インスタンス変数を取得するメソッドを定義する。
class Drink
  def initialize(aaa)
    @order = aaa
  end
  def order
    @order
  end
end
drink = Drink.new("モカ")   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得
# <hint>
# newメソッドが呼ばれると、オブジェクトが作られるときに
# 自動でinitializeメソッドが呼ばれ、@orderに"モカ"が代入される。

drink1 = Drink.new("コーラ")
puts drink1.order
# <hint>
# インスタンス変数はオブジェクト毎に存在する変数で、
# 同じクラスに書かれているインスタンス変数でもオブジェクトが
# 別ならば、別のインスタンス変数になる。

#10
#クラスにクラスメソッドを定義する。
class Drink
  def self.name
    "モカ"
  end
end
puts Drink.name
# <hint>
# クラスメソッドはクラスがメソッドを実行するので、オブジェクトを
# 作る事なく、呼び出せる。

#11
#クラスに複数のクラスメソッドを定義する。
#そのうちの１つのメソッドから別のメソッドを呼び出す。
class Drink
  def self.name
    "モカ"
  end
  def self.name_again
    name + "エスプレッソ"
  end
end
puts Drink.name_again

#12
#クラスメソッドの別の定義方法
class Drink
  class << self
    def name
      "モカ"
    end
  end
end
puts Drink.name
# <hint>
# 複数のクラスメソッドをまとめて書くのに便利
