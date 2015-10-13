require "csv"

if ARGV.empty?
  puts "ファイルを指定してください"
  exit
end

filename = ARGV.first

if !File.exists?(filename)
  puts "%s が見つかりません" % [filename]
  exit
end

CSV.each_row(File.open(filename)) do |row|
  p row
end
