class Product
	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

end

class DVD < Product
	attr_reader :runnning_time

	def initialize(name, price, runnning_time)
		super(name, price)
		@runnning_time = runnning_time
	end

	def to_s
		"作品: #{name}, 鑑賞料金: #{price}　+ 円"
	end
end

product = Product.new('Back to the future', 1800)
product.to_s

dvd = DVD.new('An awsome film', 3000, 120)
#文字列のメソッドの調整
dvd.to_s
