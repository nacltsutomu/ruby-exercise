
#4
#"akage.txt"にある「ホームズ」の回数を数える
#該当する行の内容も出力

pattern = Regexp.new(ARGV[0].encode("UTF-8"))
filename = ARGV[1]

count = 0
File.open(filename,"r:UTF-8") do |file|
  file.each_line do |line|
    if pattern =~ line
      line.scan(pattern) do |s|
        count += 1
      end 
      print line 
    end
  end 
end
puts "count:#{count}"

#5
#"akage.txt"にある「ホームズ」の回数を数える
#回数のみを数える

pattern = Regexp.new(ARGV[0].encode("UTF-8"))
filename = ARGV[1]

count = 0
File.read(filename,encoding:"UTF-8").scan(pattern) do |s|
  count += 1
end 
puts "count:#{count}"
