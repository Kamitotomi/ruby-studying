# クラスの中には定数を定義することもできる

class Product
	# デフォルトの価格を定数として定義
	DEFAULT_PRICE = 0

	attr_reader :name, :price

	def initialize(name, price = DEFAULT_PRICE)
		@name = name
		@price = price
	end
end

product = Product.new('A free movie')
puts product.price