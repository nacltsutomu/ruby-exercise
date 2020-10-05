#1
#クラスにインスタンスメソッドを定義した例

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Drink   #クラスに引数を受け取るインスタンスメソッドを定義
  def name(aaa)
    "#{aaa}をください"
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @drink = Drink.new  #Drinkクラスのオブジェクトを作ってインスタンス変数に代入
  end
  def test_name
    assert_equal "モカをください",@drink.name("モカ")     #(1)
#   assert_equal "コーラをください",@drink.name("モカ")   #(2)
  end
end
# <hint>
# Test::Unit::TestCaseを継承したクラスを用意し、text_xxxというメソッドを定義すると
# そのメソッドがテストの実行対象になる。
# 「クラス名：TestSample」「メソッド名：test_name」として定義した例
# 結果：
# (1)
# 1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# 100% passed
# (2)
# 1 tests, 1 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# 0% passed
