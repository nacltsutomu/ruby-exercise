#3
#クラスにインスタンスメソッドを定義した例

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Drink   #クラスに引数を受け取るインスタンスメソッドを定義
  def name(aaa)
    @order = aaa
    "#{aaa}をください"
#   @order = aaa  #上にもっていく
  end
  def rename
    "#{@order}をもう一杯ください"
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @drink = Drink.new  #Drinkクラスのオブジェクトを作ってインスタンス変数に代入
  end
  def test_name
    assert_equal "モカをください",@drink.name("モカ")
    assert_equal "モカをもう一杯ください",@drink.rename
  end
end

#4
#クラスにインスタンスメソッドを定義した例

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Drink   #クラスに引数を受け取るインスタンスメソッドを定義
  def name(aaa)
    @order = aaa
    "#{aaa}をください"
  end
  def order
    @order
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @drink = Drink.new  #Drinkクラスのオブジェクトを作ってインスタンス変数に代入
  end
  def test_name
    assert_equal "モカをください",@drink.name("モカ")
    assert_equal "モカ",@drink.order
  end
end

#5
#モジュールにクラスメソッドを定義した例

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

module Drink
  def self.name
    "深みのあるコーヒー"
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_name
    assert_equal "深みのあるコーヒー",Drink.name
  end
end

#6
#モジュールに module_function を定義した例
#（クラスメソッドのように使う）

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

module Drink
  def name
    "深みのあるコーヒー"
  end
  module_function :name
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_name
    assert_equal "深みのあるコーヒー",Drink.name
  end
end