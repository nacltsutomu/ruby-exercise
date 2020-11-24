
#1
#Timeクラス：時刻を取得する
#（Time.newメソッド、Time.nowメソッド）
p Time.new  #=> 2020-11-22 10:51:45 +0900
sleep 1     #=> 1秒待つ
p Time.now  #=> 2020-11-22 10:51:46 +0900

#2
#Timeクラス：年月日それぞれを取得する
t = Time.new
p t         #=> 2020-11-22 10:51:45 +0900
p t.year    #=> 2020
p t.month   #=> 11
p t.day     #=> 22 

#3
#Timeクラス：指定した時刻を表すTimeオブジェクトを取得する
#（Time.mktimeメソッド）
t = Time.mktime(2020,11,22,12,05,35)
p t         #=> 2020-11-22 12:05:35 +0900

#4
#Dateクラス：年月日を取得する
#（Date.todayメソッド）
#（Dateクラスは時刻をもたない日付を操作するためのクラス）
#（Dateクラスを利用する場合はdateライブラリを読み込む必要がある）
require "date"
d = Date.today
puts d      #=> 2020-11-22
p d         #=> #<Date: 2020-11-22 ((2459176j,0s,0n),+0s,2299161j)>

#5
#Dateクラス：年月日それぞれを取得する
#（Timeクラスと同様に日付を構成する要素を求める事ができる）
#require "date"
#d = Date.today
p d.year    #=> 2020
p d.month   #=> 11
p d.day     #=> 22 

#6
#Dateクラス：指定した日付を表すDateオブジェクトを生成することもできる
#require "date"
d = Date.new(2020,11,22)
puts d      #=> 2020-11-22
p d         #=> #<Date: 2020-11-22 ((2459176j,0s,0n),+0s,2299161j)>
