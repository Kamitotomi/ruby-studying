module Loggable

end

class Product
	include Loggable
end

# Product.include?(Loggable)

# Product.included_modules

# Product.ancestors

product = Product.new

product.class.include?(Loggable)

module Taggable
	def price_tag
		# priceメソッドはinclude先で定義されているはず
			"#{price}円"
		end
	end
end

class Product
	include Taggable

	def price
		10000
	end
end

product = Product.new
product.price_tag

