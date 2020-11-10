#ディレクトリの内容を読む

#1
#while文で繰り返す
dir = Dir.open("/Users/tsuto/ruby-exercise/")
while name = dir.read
  p name
end
dir.close
# <hint>
# dir.read
# 開いたディレクトリに含まれるものの名前を１つづつ順に返す。
# 最後の要素まで読み出していれば nil を返す。

#2
#eachメソッドで繰り返す
dir = Dir.open("/Users/tsuto/ruby-exercise/")
dir.each do |name|
  p name
end
dir.close

#3
#Dir.openメソッドにブロックを与える
Dir.open("/Users/tsuto/ruby-exercise/") do |dir|
  dir.each do |name|
    p name
  end
end
# <hint>
# ブロック内の処理が終了してメソッドから抜ける前に自動的に
# ディレクトリが閉じられるのでcloseメソッドの呼び出しを書く
# 必要がなくなる。
