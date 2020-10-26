#
#数値の切り捨て・切り上げ・四捨五入について

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

require "bigdecimal"
# 組み込みライブラリではないのでrequireする必要がある
# suchi2,suchi4で数値を一度 BigDecimal に変換

#切り捨て
def suchi
  ary = []
  a = 1.4.floor   #=>  1
  b = 1.5.floor   #=>  1
  c = -1.4.floor  #=> -2
  d = -1.5.floor  #=> -2
  ary.push(a,b,c,d)
end

#小数点以下 N 桁の切り捨て
def suchi2
  ary = []
  a = BigDecimal(1.23456.to_s).floor(2).to_f     #=> 1.23
  b = BigDecimal(1.23456.to_s).floor(3).to_f     #=> 1.234
  ary.push(a,b)
end

#切り上げ
def suchi3
  ary = []
  a = 1.4.ceil    #=>  2
  b = 1.5.ceil    #=>  2
  c = -1.4.ceil   #=> -1
  d = -1.5.ceil   #=> -1
  ary.push(a,b,c,d)
end

#小数点以下 N 桁の切り上げ
def suchi4
  ary = []
  a = BigDecimal(1.23456.to_s).ceil(2).to_f    #=> 1.24
  b = BigDecimal(1.23456.to_s).ceil(3).to_f    #=> 1.235
  ary.push(a,b)
end

#四捨五入
def suchi5
  ary = []
  a = 1.4.round   #=>  1
  b = 1.5.round   #=>  2
  c = -1.4.round  #=> -1
  d = -1.5.round  #=> -2
  ary.push(a,b,c,d)
end

#小数点以下 N 桁の四捨五入
def suchi6
  ary = []
  a = 1.23456.round(2)   #=> 1.23
  b = 1.23456.round(3)   #=> 1.235
  c = 123456.round(-2)   #=> 123500
  d = 123456.round(-3)   #=> 123000
  ary.push(a,b,c,d)
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_suchi
    assert_equal [1,1,-2,-2],suchi
  end
  def test_suchi2
    assert_equal [1.23,1.234],suchi2
  end
  def test_suchi3
    assert_equal [2,2,-1,-1],suchi3
  end
  def test_suchi4
    assert_equal [1.24,1.235],suchi4
  end
  def test_suchi5
    assert_equal [1,2,-1,-2],suchi5
  end
  def test_suchi6
    assert_equal [1.23,1.235,123500,123000],suchi6
  end
end
