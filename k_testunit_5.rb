#1
#ローカル変数とブロック変数

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Index
  def value
    x = 0
    y = 0
    ary = [1,2,3]
    ary.each do |x|
      y = x
    end
    [x,y]
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_value
    index = Index.new
    assert_equal [0,3],index.value
  end
end
# <hint>
# ブロックの外側で作られたローカル変数は、ブロックの中でも引き続き使うことができる。
# 一方、ブロック変数として使われる変数はブロックの外側に同じ名前の変数があっても
# 別のものとして扱われる。
# そのため、xの値はary.eachを呼び出す前と変わっていない。
# 逆に、ブロック内で初出の変数はブロックの外側に持ち出す事ができないので、
# ブロックの外側での初期化が必要。（初期化しないとエラーとなる）
# 「y = 0」yの初期化を削除するとエラーとなる。（NameError）
#
#2
#ローカル変数とブロック変数
#ブロック変数とは別にブロックローカル変数を定義する場合

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

class Index
  def value
    x = y = z = 0
    ary = [1,2,3]
    ary.each do |x; y|  #yをブロックローカル変数として定義
      y = x
      z = x
    end
    [x,y,z]
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_value
    index = Index.new
    assert_equal [0,0,3],index.value
  end
end
# <hint>
# ブロック変数は常にブロック内でのみ有効な変数（ブロックローカル変数）として
# 扱われるので外側のローカル変数を上書きしないが、
# ブロック変数とは別にブロックローカル変数を定義する場合、ブロック変数の後ろに「;」
# で区切って定義する。
#
