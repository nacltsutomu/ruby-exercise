#
#encodeメソッド、encodingメソッドについて

require "test/unit"    #この記述をすることでTest::Unit::TestCaseが実行される

#1
#encodeメソッドを使ってそれぞれUTF-8に変換してから連結する例 
def to_utf8 
  str_euc  = "こんにちは".encode("EUC-JP") 
  str_sjis = "さようなら".encode("Shift_JIS") 
  str_euc.encode("UTF-8") + str_sjis.encode("UTF-8") 
end

#2
#(#1)の文字列のエンコーディングを調べる例 
def to_utf8_2 
  str_euc  = "こんにちは".encode("EUC-JP") 
  str_sjis = "さようなら".encode("Shift_JIS") 
  str = str_euc.encode("UTF-8") + str_sjis.encode("UTF-8") 
  str.encoding.to_s
end

#3
#Shift_JISでsjis.txtを作成し、そのファイルを開いて、
#encodeメソッドを使ってUTF-8に変換して出力する例 
def to_utf8_3
  File.open("sjis.txt","w:Shift_JIS") do |text| 
    text.write("こんにちは") 
  end
  File.open("sjis.txt","r:Shift_JIS") do |text|
    str = text.read
    str.encode("UTF-8")
  end
end

#4
#(#3)の文字列のエンコーディングを調べる例
def to_utf8_4
  File.open("sjis.txt","w:Shift_JIS") do |text| 
    text.write("こんにちは") 
  end
  File.open("sjis.txt","r:Shift_JIS") do |text|
    str = text.read
    str2 = str.encode("UTF-8")
    str2.encoding.to_s
  end
end

#assert_equal（期待値）,（実際の値）
class TestSample < Test::Unit::TestCase  #Test::Unit::TestCaseを継承したTestSampleクラスを定義
  def test_to_utf8
    assert_equal "こんにちはさようなら",to_utf8 
  end
  def test_to_utf8_2
    assert_equal "UTF-8",to_utf8_2 
  end
  def test_to_utf8_3
    assert_equal "こんにちは",to_utf8_3 
  end
  def test_to_utf8_4
    assert_equal "UTF-8",to_utf8_4 
  end
end
