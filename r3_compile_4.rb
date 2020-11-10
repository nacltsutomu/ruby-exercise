#標準入出力３つのＩＯオブジェクトについて

#1
#標準入力について
#標準入力は最初はコンソールに関連づけられていて、キーボードの入力を
#受け取るため、以下の３つは同じ結果が得られる。
x = STDIN.gets
p x

x = $stdin.gets
p x

x = gets
p x

#2
#標準入力の入力元を変更することもできる。（例：ファイルから受け取る）
#以下の２つは同じ結果が得られる。
$stdin = File.open("yyy.txt")
x = $stdin.gets
p x

$stdin = File.open("yyy.txt")
x = gets
p x

# <hint>
# $stdin = STDIN     # 定数を代入すると元に戻せる

#3
# IOオブジェクトがコンソールに関連づけられているかどうか
# tty?メソッドで判別ができる。
if $stdin.tty?
  puts "Stdin is a TTY."
else
  puts "Stdin is not a TTY."
end
# <hint>
# コマンドの出力をパイプで渡したり、入力をファイルに関連づけると
# 結果が変わる。以下の場合はfalseとなる。
# echo | ruby xxx.rb
# ruby xxx.rb < yyy.txt

#4
#標準出力、標準エラー出力について
#以下の事例は、ランダムな値を３回生成して、標準出力に書き込み、
#何回出力をしたかというメッセージを標準エラー出力に書き込む事例です。
#この場合、標準出力・標準エラー出力共に画面に表示される。
#（※）レシーバを指定しない場合は標準出力に書き込む事となる。

3.times do |i|
  STDOUT.puts "#{Random.rand}"             #=>標準出力
  STDERR.puts "#{i + 1}回出力しました"      #=>標準エラー出力
end
  
3.times do |i|
  $stdout.puts "#{Random.rand}"            #=>標準出力
  $stderr.puts "#{i + 1}回出力しました"     #=>標準エラー出力
end
  
3.times do |i|
  puts "#{Random.rand}"                    #=>標準出力
  puts "#{i + 1}回出力しました"             #=>標準出力
end
  
#5
#標準出力をファイルに保存する（リダイレクトする）と、
#標準エラー出力のみが画面に表示される事となる。
#コマンドの後に「> ファイル名」を書く。
# （例）ruby xxx.rb > yyy.txt
#以下の２つは同じ結果が得られる
3.times do |i|
  $stdout.puts "#{Random.rand}"            #=>標準出力（ランダムな値はファイル出力）
  $stderr.puts "#{i + 1}回出力しました"     #=>標準エラー出力
end

3.times do |i|
  puts "#{Random.rand}"                    #=>標準出力（ランダムな値はファイル出力）
  $stderr.puts "#{i + 1}回出力しました"     #=>標準エラー出力
end

#6
#標準出力をファイルに保存する（リダイレクトする）場合に
#コマンドの後に「> ファイル名」を書く方法ではなく、
#標準出力の出力元を変更することもできる。
#以下の２つは同じ結果が得られる
$stdout = File.open("yyy.txt", "w")
3.times do |i|
  $stdout.puts "#{Random.rand}"            #=>標準出力（ランダムな値はファイル出力）
  $stderr.puts "#{i + 1}回出力しました"     #=>標準エラー出力
end

$stdout = File.open("yyy.txt", "w")
3.times do |i|
  puts "#{Random.rand}"                    #=>標準出力（ランダムな値はファイル出力）
  $stderr.puts "#{i + 1}回出力しました"     #=>標準エラー出力
end

# <hint>
# $stdout = STDOUT     # 定数を代入すると元に戻せる
 