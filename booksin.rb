class BookInStock
  
  attr_reader :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
    
end

class CsvReader
  
  def initialize
    @books_in_stock = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end
  
  def total_value_in_stock
    
  end
  
  def number_of_each_isbn
    
  end
  
end

reader = CsvReader.new
reader.read_in_csv_data("file1.csv")
reader.read_in_csv_data("file2.csv")

puts "Total value in stock = #{reader.total_value_in_stock}"

book = BookInStock.new("isbn235", 33.80)

puts "ISBN   = #{book.isbn}"
puts "Price  = $#{book.price}"
puts "Price in cents = #{book.price_in_cents}"

puts "Changing price to 1234 cents..."
book.price_in_cents = 1234

puts "Price  = $#{book.price}"
puts "Price in cents = #{book.price_in_cents}"