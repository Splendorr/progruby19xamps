require_relative 'csv_reader'

reader = CsvReader.new
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name)
end


p reader.books_in_stock
puts "Total value = #{reader.total_value_in_stock}"