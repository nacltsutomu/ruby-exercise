
#3
#"akage.html"の
#<div class="main_text">と
#<div class="after_text">の間の行だけを
#"akage.txt"という名前で出力する
#【タグを削除する場合】

require "cgi/util"
htmlfile = "akage.html"
textfile = "akage.txt"

html = File.read(htmlfile,encoding:"UTF-8")

File.open(textfile,"w:UTF-8") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<div class="main_text">/ !~ line 
      next
    else
      in_header = false
    end 
    break if /<div class="after_text">/ =~ line 
    line.gsub!(/<[^>]+>/,"")
    esc_line = CGI.unescapeHTML(line)
    f.write esc_line
  end
end

# hint
# 24行目:
# HTMLのタグは「<」で始まり、「>」で終わるものなので
# これでHTMLタグの部分にマッチさせて、削除します。
#
# 25行目:CGI.unescapeHTML
# このメソッドは「require "cgi/util"」で読み込まれるクラス
# のメソッドで、「&amp;」「&lt;」といったHTMLの文字実体参照を
# 「&」「<」などの普通の文字に戻すメソッドです。
# （文字実体参照　・・　ある文字を別の書き方で書き表す方法）
