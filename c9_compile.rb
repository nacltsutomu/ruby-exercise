#1
#モジュールにメソッドを定義する。
module Cream
  def cream
    @order += "クリーム"
  end
end

#2
#定義したモジュールのメソッドをクラスで使う。
class Drink
  include Cream   #=> Drinkクラスのオブジェクトは
                  #=> モジュールCreamのメソッドが利用可能となる
  def initialize(aaa)
    @order = aaa
  end
  def order
    @order
  end
end
drink = Drink.new("モカ")   #=> インスタンス変数に代入される
drink.cream   #=> メソッド実行で、@orderに"クリーム"が追加される。
puts drink.order   #=> インスタンス変数を取得
# <hint>
# newメソッドが呼ばれると、オブジェクトが作られるときに
# 自動でinitializeメソッドが呼ばれ、@orderに"モカ"が代入される。
# drink.cream で@orderが"モカクリーム"となる。

#（参考）モジュールを使わずに同じ動作とする場合
class Drink
  def cream
    @order += "クリーム"
  end
  def initialize(aaa)
    @order = aaa
  end
  def order
    @order
  end
end
drink = Drink.new("モカ")
drink.cream
puts drink.order

#3
#定義したモジュールのメソッドを複数のクラスで使う。
module Topping
  def topping
    @order += "ミルククリーム"
  end
end
class Drink
  include Topping
  def initialize(aaa)
    @order = aaa
  end
  def order
    @order
  end
end
class Cake
  include Topping
  def initialize(aaa)
    @order = aaa
  end
  def order
    @order
  end
end
drink = Drink.new("ホット")
drink.topping
puts drink.order

cake = Cake.new("チョコ")
cake.topping
puts cake.order

#4
#定義したモジュールのメソッドをクラスメソッドとして使う。
module Greeting
  def name
    "モカ"
  end
end
class Drink
  extend Greeting   #=> モジュールGreetingがDrinkクラスのクラスメソッド
                    #=> として利用可能となる
end
puts Drink.name

#class Drink
#  def self.name
#    "モカ"
#  end
#end
#puts Drink.name

#5
#モジュールにクラスメソッドを定義する。
module Food
  def self.name
    "ごはん"
  end
end
puts Food.name
# <hint>
# モジュールにはインクルードしてメソッドを提供する使い方のほかに
# クラスメソッドや定数を呼び出す使い方がある。

#6
#モジュールに定数を定義する。
module Food
  Price = 100
end
puts Food::Price
# <hint>
# モジュールの中で定義されている定数を使うときには::でつなげて書く。

#7
#同じクラス名を複数の場所で使いたい。
#別のクラスなので別々に定義して呼び分けたい。
#モジュールを使って名前を付け分けるという手法
module Cafex
  class Coffee
    def self.name
      "深みのあるコーヒー"
    end
  end
end
module Cafey
  class Coffee
    def self.name
      "甘いコーヒー"
    end
  end
end
puts Cafex::Coffee.name
puts Cafey::Coffee.name
# <hint>
# モジュール名::クラス名と書くことでクラスを使い分けることができる。

#8
#プログラムの一部を別ファイル(c9_compile_2.rb)で定義して読み込む。
require_relative "c9_compile_2"
#require "./c9_compile_2"   #=> これでも読み込める
class Drink
  include Cream   #=> Drinkクラスのオブジェクトは
                  #=> モジュールCreamのメソッドが利用可能となる
  def initialize
    @order = "ハワイコナ"
  end
  def order
    @order
  end
end
drink = Drink.new
drink.cream   #=> メソッド実行で、@orderに"クリーム"が追加される。
puts drink.order   #=> インスタンス変数を取得
