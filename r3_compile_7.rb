
#1
#Procオブジェクトをつくり、Proc#callメソッドで実行する
#（引数がブロック変数となる）
hello1 = Proc.new do |name|
  puts "Hello, #{name}."
end

hello2 = proc do |name|
  puts "Hello, #{name}."
end

hello1.call("World1")  #=> "Hello, World1."
hello2.call("World2")  #=> "Hello, World2."

#2
#Proc.newやprocとは別の書き方として、lambdaメソッドで
#Procオブジェクトをつくることもできる
hello3 = lambda do |name|
  puts "Hello, #{name}."
end
 
hello1.call("World3")  #=> "Hello, World3."
