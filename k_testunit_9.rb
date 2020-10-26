
#
#「文字列をつなげる」について

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#1
#新しい文字列を作る　・・　「+」を使う
def str
  a = "Hello, "
  b = "World!"
  c = a + b       #=>"Hello, World!"
  [c]
end

#2
#すでにある文字列に別の文字列をつなげる感じで「+」を使う
#（レシーバと同じオブジェクトを参照している変数がある場合）
def str2
  a = "Hello, "
  b = "World!"
  c = a           #=>"Hello, "
  a = a + b       #=>"Hello, World!"
  [c,a]
end
# <hint>
# 「a = a + b」をしても、cは"Hello, "のまま変わらない。

#3
#すでにある文字列に別の文字列をつなげる　・・　<<メソッド又はconcatメソッド
def str3
  a = "Hello, "
  b = "World!"
  a << b          #=>"Hello, World!"
  [a]
end
# <hint>
# a.concat(b) でも同じ

#4
#すでにある文字列に別の文字列をつなげる
#（レシーバと同じオブジェクトを参照している変数がある場合）
def str4
  a = "Hello, "
  b = "World!"
  c = a           #=>"Hello, "
  a << b          #=>"Hello, World!"
  [c,a]
end
# <hint>
# a.concat(b) でも同じ
# 「a << b」をすると、この場合、cも"Hello, World!"となる。

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_str
    assert_equal ["Hello, World!"],str
  end
  def test_str2
    assert_equal ["Hello, ","Hello, World!"],str2
  end
  def test_str3
    assert_equal ["Hello, World!"],str3
  end
  def test_str4
    assert_equal ["Hello, World!","Hello, World!"],str4
  end
end
