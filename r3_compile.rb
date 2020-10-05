#1
#ファイルからテキストデータを読み込んで表示する。
filename = ARGV[0]
file = File.open(filename)  #=> ファイルを開く
text = file.read  #=> ファイルのテキストデータを読み込む
puts text  #=>  テキストデータを表示
file.close  #=> ファイルを閉じる
# <hint>
# r3_test.txtを作成する（１行目：ruby!）
# ruby r3_compile.rb r3_test.txtを実行
# ※ARGVはRubyが用意した特別な定数で、
#   コマンドプロンプトで指定した引数を要素
#   として持つ配列オブジェクト

#2
# File.readメソッドを使うと簡単に書ける。
filename = ARGV[0]
text = File.read(filename)
puts text
# <hint>
# File.readメソッドは
# ファイルを開く、ファイルのテキストデータを読み込む、
# ファイルを閉じる　をまとめて行う。

#3
#変数が不要である場合はもっと簡単に書ける。
puts File.read(ARGV[0])

#4
#ファイルからテキストデータを１行ずつ読み込んで処理する。
filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
  puts line
end
file.close
# <hint>
# データをすべて読み込んでから処理をするのはやめて、
# 時間とメモリを無駄に使わないように１行ずつ読み込んで処理する。
# each_lineメソッドはファイルの各行をそれぞれ処理するメソッド。
