#5
#ファイルからテキストデータを１行ずつ読み込んで
#特定のパターンの行のみを表示する。
pattern = Regexp.new(ARGV[0])  #=> 正規表現オブジェクトをつくる
filename = ARGV[1]
#
file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    puts line
  end
end
file.close
# <hint>
# r3_test2.txtを作成する（１行目：Hash、２行目：Array、３行目：Integer）
# ruby r3_compile_2.rb Array r3_test2.txtを実行
# Arrayという文字列が含まれる行のみ表示される。

