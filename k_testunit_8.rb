#
#破壊的なメソッドとfreezeについて

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#1
def ary
  a = [1,2,3,4]
  b = a
  b.pop    #=>  4
  [a,b]
end
# <hint>
# popメソッドで変数bの要素を削除すると、変数bの示す配列が[1,2,3,4]から
# [1,2,3]になるが、同時に変数aの示す配列の要素も削除される。
# これは「b=a」によって、bはaの中身をコピーしたオブジェクトを示すように
# なるのではなく、bはaと同一のオブジェクトを示すようになるからである。
# p a.object_id
# p b.object_id
# で確認するとオブジェクトidが同じ事がわかる。

#2
def ary2
  a = [1,2,3,4]
  a.freeze       #オブジェクトは凍結される。
  b = a.dup      #オブジェクトの複製を作成して返す。
# a.pop          #凍結されたオブジェクトを変更しようとするとエラーとなる。
  b.pop    #=>  4
  [a,b]
end
# <hint>
# dupメソッドでコピーしたオブジェクトは
# p a.object_id
# p b.object_id
# で確認するとオブジェクトidが違う事がわかる。

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_ary
    assert_equal [[1,2,3],[1,2,3]],ary
  end
  def test_ary2
    assert_equal [[1,2,3,4],[1,2,3]],ary2
  end
end
