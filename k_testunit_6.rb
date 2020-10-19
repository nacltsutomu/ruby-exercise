#1
#特異メソッド

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Drink
  def order
    "モカ"
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def setup
    @drink1 = Drink.new
    @drink2 = Drink.new
    def @drink1.reorder    # @drink1に特異メソッドreorderを定義
      "コーラ"
    end
  end
  def test_order
    assert_equal "モカ",@drink1.order
  end
  def test_order2
    assert_equal "モカ",@drink2.order
  end
  def test_order3
    assert_equal "コーラ",@drink1.reorder
  end
end

