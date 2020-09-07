# selfなしで呼ぶか、ありで呼ぶか、直でインスタンス変数を参照か。
# 参照のパターン

class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def hello
		# selfなしでnameメソッドを呼ぶ
		"Hello, I am #{name}"
	end

	def hi
		# selfで
		"Hi, I am #{self.name}"
	end

	def my_name
		"My name is #{@name}"
	end
end

user = User.new('俺')
user.hello
user.hi
user.my_name

# selfの有無で話が変わってくるケース

class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def rename_to_bob
		# selfなしでnameメソッドを呼ぶ
		name = "Bob"
	end

	def rename_to_gibson
		# selfで
		self.name = 'Gibson'
	end

	def rename_to_marray
		@name = 'Marray'
	end
end

user = User.new('Ayumi')

user.rename_to_bob
user.rename_to_gibson
user.rename_to_marray


# クラス名.メソッド

class Product
	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	# 金額を整形するメソッド
	def self.format_price(price)
		"#{price}円"
	end

	def to_s
		# インスタンスメソッドからクラスメソッドを呼び出す
		formatted_price = Product.format_price(price)
		"name: #{name}, price: #{formatted_price}"
	end
end

product = Product.new('A great movie', 1000)
product.to_s

product.name
product.price


# 確認

product.class
product.instance_of?(Product)

product.is_a?(Product)
product.is_a?(Object)
product.is_a?(BasicObject)

