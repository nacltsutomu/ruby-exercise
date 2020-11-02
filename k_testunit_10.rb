
#
#例外が発生する場合の検証

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#3
#値の登録にはstoreメソッド、値の取り出しにはfetchメソッドを使う事もできる。
#キーが登録されていない場合は例外を発生させる点が[]と異なる。
def value
  h = Hash.new
  h.store("R","Ruby")
  h.fetch("R")
end

def value2
  h = Hash.new
  h.store("R","Ruby")
  h.fetch("N")
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_value
    assert_equal "Ruby",value
  end
  def test_value2
    err = assert_raises KeyError do
      value2
    end
    # エラーメッセージを検証
    assert_equal ("key not found: \"N\""), err.message
  end
end
