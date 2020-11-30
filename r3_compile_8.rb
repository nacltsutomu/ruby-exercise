
#1
#短編小説「赤毛連盟」のファイルをダウンロードする
#このHTMLファイルはShift_JISですが、UTF-8に変換してから
#"akage.html"という名前で出力する

require "open-uri"

url = "https://www.aozora.gr.jp/cards/000009/files/8_31220.html"
filename = "akage.html"

File.open(filename,"wb:UTF-8") do |f|
  text = open(url,"r:Shift_JIS:UTF-8").read
  f.write text
end
