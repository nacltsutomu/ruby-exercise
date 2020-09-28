#1
#渡されたブロックを実行する。
def foo
  p block_given?
end

##ブロックを渡さないとき
foo  #=> false
##ブロックを渡すとき
foo do
end   #=> true
# <hint>
# block_given?メソッド　・・　ブロックをわたされたかどうかを判別するメソッド

#2
#渡されたブロックを実行する。
def dice
  if block_given?
    puts "run block"
    yield  #=> 渡されたブロックを実行
  else
    puts "normal dice"
    puts [1,2,3,4,5,6].sample
  end
end

##ブロックを渡さないとき
dice  #=> １から６までの中の１つをランダムで表示
##ブロックを渡すとき
dice do
  puts [4,5,6].sample
end
# <hint>
# yield　・・　渡されているブロックと同じ働きをするメソッドのようなもの

#3
#渡されたブロックを引数で受け取り、実行する。
def foo(&b)
  b.call  #=> 渡されたブロックを実行
end

##ブロックを渡す
foo do
  puts "あいうえお"
end
# <hint>
# ブロックを受け取る引数は先頭に&を書く。
# 変数に代入されたブロックはcallメソッドで実行できる。

#4
#ブロックのクラスを表示
def foo(&b)
  p b.class  #=> Proc  ※ブロックのクラスを表示
end

foo do
  "block"
end
# <hint>
# ブロックをProcというオブジェクトとして扱っている。
# Procオブジェクトはブロックの処理をオブジェクト化したもの。
