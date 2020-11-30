
#2
#"akage.html"の
#<div class="main_text">と
#<div class="after_text">の間の行だけを
#"akage.txt"という名前で出力する

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
    f.write line
  end
end
