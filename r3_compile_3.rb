#1
#引数を与えた場合、その値がハッシュのデフォルト値、つまり登録されていない
#キーを指定した時に返す値になる。
h = Hash.new("")
h["R"] = "Ruby"
p h["R"]  #=> "Ruby"
p h["N"]  #=> ""

h = Hash.new("(undef)")
h["R"] = "Ruby"
p h["R"]  #=> "Ruby"
p h["N"]  #=> "(undef)"

#2
#引数がない場合、そのハッシュのデフォルト値はnilになる。
h = Hash.new
h["R"] = "Ruby"
p h["R"]  #=> "Ruby"
p h["N"]  #=> nil

#3
#値の登録にはstoreメソッド、値の取り出しにはfetchメソッドを使う事もできる。
#キーが登録されていない場合は例外を発生させる点が[]と異なる。
h = Hash.new
h.store("R","Ruby")
p h.fetch("R")  #=> "Ruby"
#p h.fetch("N")  #=> KeyError
# <補足>
# 例外が発生する場合の検証をk_testunit_10.rbで行った。

#4
#第２引数を指定すれば、キーが登録されていないときに返す値として使用される。
h = Hash.new
h.store("R","Ruby")
p h.fetch("R","(undef)")  #=> "Ruby"
p h.fetch("N","(undef)")  #=> "(undef)"

#5
#fetchメソッドは引数としてブロックを使う事ができる。
#この場合、ブロックを実行した結果得られる値が、キーが登録されていない
#ときに返す値になる。
h = Hash.new
p h.fetch("N") {String.new}  #=> ""

#
#  ハッシュのデフォルト値に関して（補足）

#6
#キーが登録されていないときに返す値は共有される。
h = Hash.new(1)
h["a"] = 10
p h["a"]   #=> 10
p h["x"]   #=> 1
p h["y"]   #=> 1

#7
#キーによって異なる値を返したい場合、Hash.newにブロックを指定する。
#キーが登録されていないときにブロックが起動する。
h = Hash.new do |hash,key|
  hash[key] = key.upcase
end
h["a"] = "b"
p h["a"]   #=> "b"
p h["x"]   #=> "X"
p h["y"]   #=> "Y"
# <hint>
# upcaseメソッドは小文字を大文字に置き換えた文字列を返す。
