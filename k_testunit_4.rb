#1
#for文

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def moji
  names = ["xxx","yyy","zzz"]
  for x in names do
    x
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_moji
    assert_equal ["xxx","yyy","zzz"],moji
  end
end

#2
#for文（範囲指定で繰り返し処理する場合）

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def gokei
  sum = 0
  for x in 1..5 do
    sum += x
  end
  sum
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_gokei
    assert_equal 15,gokei
  end
end

#3
#参考：#2と同じ処理をeachメソッドで書いた場合

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def gokei
  sum = 0
  (1..5).each do |x|
    sum += x
  end
  sum
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_gokei
    assert_equal 15,gokei
  end
end

#4
#until文（while文の条件判定が反対）

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def gokei
  sum = 0
  i = 1
  until sum >= 50
    sum += i
    i += 1
  end
  sum
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_gokei
    assert_equal 55,gokei
  end
end

#5
#参考：#4と同じ処理をwhile文で書いた場合

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def gokei
  sum = 0
  i = 1
  while sum < 50
    sum += i
    i += 1
  end
  sum
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_gokei
    assert_equal 55,gokei
  end
end

#6
#参考：#4と同じ処理をwhile文で書いた場合（!演算子を使った場合）

require "test/unit"  #この記述をすることでTest::Unit::TestCaseが実行される

def gokei
  sum = 0
  i = 1
  while !(sum >= 50)
    sum += i
    i += 1
  end
  sum
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_gokei
    assert_equal 55,gokei
  end
end
