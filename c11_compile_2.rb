#
#クラスにインスタンス変数を取得するメソッドを定義する。
#インスタンス変数へ代入するメソッド
#class Drink
#  def order=(aaa)   #=> インスタンス変数名から@を取り、末尾に=を加えた名前にする
#    @order = aaa
#  end
#  def order   #=> インスタンス変数名から@を取り除いた名前にする
#    @order
#  end
#end
#drink = Drink.new
#drink.order=("モカ")   #=> インスタンス変数に代入される
#puts drink.order   #=> インスタンス変数を取得

#8
#クラスにインスタンス変数を取得するメソッドを定義する。
#インスタンス変数へ代入するメソッド
#【短い書き方】
class Drink
  attr_writer :order
  attr_reader :order
end
drink = Drink.new
drink.order=("コーラ")   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得

#9
#クラスにインスタンス変数を取得するメソッドを定義する。
#インスタンス変数へ代入するメソッド
#【さらに短い書き方】
class Drink
  attr_accessor :order
end
drink = Drink.new
drink.order=("紅茶")   #=> インスタンス変数に代入される
puts drink.order   #=> インスタンス変数を取得
