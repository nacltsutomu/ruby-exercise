
#ruby r3_compile_12.rb 1000002

require "csv"

code = ARGV[0]

#Shift_JISをUTF-8に変換してCSVファイルを開く
CSV.open("KEN_ALL.CSV","r:Shift_JIS:UTF-8") do |csv|
  csv.each do |record|
    #record[2]は郵便番号7桁
    #引数で指定した郵便番号と一致するレコードを表示する
    puts record.join(" ") if record[2] == code
  end
end
