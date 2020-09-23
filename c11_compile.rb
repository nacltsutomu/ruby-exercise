#
#puts "金額を入力してください"
#bill = gets.to_i
#puts "割り勘する人数を入力してください"
#number = gets.to_i
#warikan = bill / number
#puts "１人あたり#{warikan}円です"
# <hint>
# getsはキーボードからの入力を取り込むメソッド
# numberを0で入力した場合、ZeroDivisionError

#1
#例外処理
puts "金額を入力してください"
bill = gets.to_i
puts "割り勘する人数を入力してください"
number = gets.to_i

begin
  warikan = bill / number
  puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError
  #ZeroDivisionError例外が発生したらメッセージを表示
  puts "おっと、0人では割り勘できません"
end

#2
#例外処理：メソッド内で例外処理を書く場合はbeginとendを省略できる。
def keisan(bill,number)
  warikan = bill /number
  puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError
  #ZeroDivisionError例外が発生したらメッセージを表示
  puts "おっと、0人では割り勘できません"
end
keisan(100,0)
keisan(100,1)
keisan(100,2)

#3
#例外処理：ブロック内でもbeginとendを省略できる。
bill = 100
numbers = [0,1,2]

numbers.each do |number|
  warikan = bill /number
  puts "１人あたり#{warikan}円です"
rescue ZeroDivisionError
  #ZeroDivisionError例外が発生したらメッセージを表示
  puts "おっと、0人では割り勘できません"
end

#4
#例外処理を使わない：事前に値をチェックする。
def keisan(bill,number)
  if number.zero?
    puts "おっと、0人では割り勘できません"
    return
  end
  warikan = bill /number
  puts "１人あたり#{warikan}円です"
end
keisan(100,0)
keisan(100,1)
keisan(100,2)

#5
#例外の詳細情報を得る。
def cat(filename)
  File.open(filename) do |file|   #=> ファイルを開く
    file.each_line {|line| puts line}  #=> ファイルの内容を表示
  end  #=> ファイルを閉じる
rescue SystemCallError => e
  puts "--- 例外が発生しました ---"
  puts "例外クラス： #{e.class}"
  puts "例外メッセージ： #{e.message}"
end
filename = ARGV.first   #=> コマンドプロンプトの引数を読み込み
cat(filename)
# <hint>
# c11_test_menu.txtを作成する
# ruby c11_test.rb c11_test_menu.txtを実行
# これはエラーとはならないが、
# ruby c11_test.rb c11_test_menu2.txtを実行
# するとエラーになる。
# ※ARGVはRubyが用意した特別な定数で、
#   コマンドプロンプトで指定した引数を要素
#   として持つ配列
#
#6
#例外を発生させる。
def type(age)
  if age < 0
    raise "年齢がマイナスです (#{age}才)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end
age = ARGV.first.to_i
type = type(age)
puts "#{age}才は#{type}です"
# <hint>
# ruby c11_test2.rb -5を実行
# するとエラーになる。

#7
#例外を発生させる。
#例外の有無に関わらず必ず処理を実行する。
def type(age)
  if age < 0
    raise "年齢がマイナスです (#{age}才)"
  elsif age < 20
    "未成年"
  else
    "成年"
  end
end
begin
  age = ARGV.first.to_i
  type = type(age)
  puts "#{age}才は#{type}です"
rescue => e
  puts "例外が発生しました： #{e.message}"
ensure
  puts "ご利用ありがとうございました"
end
# <hint>
# ruby c11_test3.rb -5を実行
# するとエラーになるが、
# "ご利用ありがとうございました"は実行される。
