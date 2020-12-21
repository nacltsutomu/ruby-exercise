#1 次のプログラムを実行するとどうなりますか
$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end

[*1..10].any? do
  Count.up
end

p $val

#hint
#Enumerable#any?はブロックの戻り値がtrueになると繰り返しをその時点で止める。
#繰り返しが止まるのは3回目の繰り返し、つまり$valが3になった時点です。
#この問題のプログラムを実行すると、3が表示される。

#2 次のコードを実行するとどうなりますか
begin
  raise StandardError.new
rescue => e
  puts e.class
end

#hint
#rescueに処理対象の例外クラスの指定がない場合は、
#StandardErrorのサブクラス全てを捕捉する。
#Rubyの組み込み例外は全てStandardErrorのサブクラスです。
#結果はStandardErrorと表示される。

#3 次のコードを実行するとどうなりますか
arr = [1,2].product([3,4]).transpose
p arr

#hint
#productはレシーバーの配列と引数の配列からそれぞれ1つ要素を取り出し新しい
#配列を作成し、全ての配列を要素とする配列を返す。
#transposeはレシーバーの配列から行と列を入れ替えた配列を作成し、返す。
#結果は[[1, 1, 2, 2], [3, 4, 3, 4]]と表示される。

#ちなみに
#arr = [1,2].product([3,4])
#p arr
#結果は[[1,3],[1,4],[2,3],[2,4]]

#4 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ
open('textfile.txt', 'r+') do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
#実行前の textfile.txt 内容
#recode 1
#recode 2
#recode 3
#実行後の textfile.txt 内容
#RECODE 1
#RECODE 2
#RECODE 3
#正解は'r+'

#5 次のコードを実行するとどうなりますか
str = "1;2:3;4"
p str.split(";|:")

#hint
#結果は["1;2:3;4"]と表示される。
#問題のコードは";|:"を区切り文字に指定されているため、例えば"1;|:2"であれば[1, 2]になる。
#異なる区切り文字を複数指定する場合は正規表現を用いる。
#[1, 2, 3, 4]を得るためには、"1;2:3;4".split(/;|:/)とする。

#6 次のコードを実行するとどうなりますか
def foo(n)
  n ** n
end
  
puts foo (2) * 2

#hint
#foo (2) * 2はメソッド名と引数の間に空白があるため、foo((2) * 2)が呼ばれたと解釈される。
#よって、4の4乗の256になる。

#7 次のコードを実行するとどうなりますか
h = {a: 100, b: 200}
h.each {|p|
  p p.class
}

#hint
#Hash#eachのブロックパラメータはArrayで渡される。
#結果はArrayと表示される。

#8 次のコードを実行するとどうなりますか
p "Hello" % 5

#hint
#String#%はフォーマットされた文字列を返す。
#フォーマットには、"%d"や%sなどの指示子を用いる。
#String#%を用いると、指示子が引数の値で置換される。
#今回の問題では文字列"Hello"にフォーマットに必要な指示子が無いためそのまま出力される。
#結果は"Hello"と表示される。

#ちなみに
#指示子を付与すれば次のように表示される。
#p "Hello%d" % 5 # => "Hello5"

#9 次のコードを実行するとどうなりますか
a = [1]
a[5] = 10
a.compact
p a

#hint
#a.length = 1の配列の5番目へ値を入れると、配列の長さが拡張される。
#未指定の要素へはnilが入る。
#Array#compactはselfからnilを取り除くメソッドです。
#問題では、Array#compact!ではないので、selfは変わらない。(要注意)
#結果は[1, nil, nil, nil, nil, 10]と表示される。

#10 次のコードを実行するとどうなりますか。
10.times{|d| print d == 3..d == 5 ? "T" : "F" }

#hint
#Integer#timesは0からself -1までの数値を順番にブロックに渡すメソッドです。
#d == 3..d == 5の部分は条件式に範囲式を記述している。
#この式は、フリップフロップ回路のように一時的に真偽を保持するような挙動をとる。
#結果はFFFTTTFFFF と表示される。

#11 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ。
#   ただし、空ファイルは作成済みである。
File.open('testfile.txt', 'a') do |f|
  f.write("recode 1\n")
  f.seek(0, IO::SEEK_SET)
  f.write("recode 2\n")
end
#実行後の textfile.txt 内容
#recode 1
#recode 2

#hint
#IO#seekはファイルポインタを指定の位置に移動する。
#IO:SEEK_SETがファイルの先頭からの位置を指定する識別子です。
#正解は'a'

#12 以下のコードを実行するとどうなりますか
X = 10
X = X < 10 ? "C" : "D"
puts X

#結果は警告が出た後、D と表示される。

#13 次のコードを実行するとどうなりますか
a = "Ruby"
b = " on Rails"
a.concat b
a.reverse
p a.index("R", 1)

#hint
#問題では、Array#reverse!ではないので、selfは変わらない。(要注意)
#結果は8 と表示される。

#14 次のコードを実行するとどうなりますか
# list.txt
#1
#2
#3
#4

io = File.open('list.txt')

while not io.eof?
  io.readlines
  io.seek(0, IO::SEEK_CUR)
  p io.readlines
end

#hint
#177行目で、ファイルから全て読み込んだ時点で、ファイルポインタはファイル終端にある。
#178行目は、ファイル終端から0文字移動するため、結果、179行目では[]のみ表示される。

#15 次のプログラムを実行するとどうなりますか
array = Array.new(3){"Apple"}
array[0].upcase!

p array

#hint
#Array.newの引数に整数を指定すると、その長さの配列を作成する。
#ブロックを指定すると、要素ごとにブロックが評価されるのでそれぞれ
#別のオブジェクトIDになる。
#このプログラムを実行すると、0番目の要素だけ大文字になる。
#結果は["APPLE", "Apple", "Apple"]と表示される。

#16 次のプログラムの説明で正しい選択肢を選んでください。
str = <<EOS
よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
EOS
puts str

#hint
#ヒアドキュメントでは改行、スペースは削除されない。
#EOSと"EOS"はヒアドキュメント内で式展開を行う。
#識別子をシングルクォートで'EOS'囲う場合は式展開は行われず、全て文字列として扱われる。
#結果は
#よりニッチに。よりユニークに。
#  IT市場はもちろん、ヘルスケア・医療・介護など
#    次世代市場における企業や生活者のユーザビリティを向上させる
#      サービス、ソフトウェアを開発しています。
#    2

#17 次のプログラムを実行すると"2018-03-19"と表示されます。
#   これと同じ結果になる選択肢を選んでください。
#※2018/03/19現在の結果
#puts Date.today.strftime("%F")

#結果はDate.today.strftime("%Y-%m-%d")
