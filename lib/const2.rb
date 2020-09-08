# 定数について定数は外部から参照可能

class Product
	DEFAULT_PRICE = 0

	# 再代入を防ぐ凍結メソッド
	Product.freeze
	# 書き換えると警告されるが再代入は可能
	# DEFAULT_PRICE = 1000
	

	# 定数をプライベートにする
	# private_constant :DEFAULT_PRICE
end

# クラスの外部から定数を参照するコード
puts Product::DEFAULT_PRICE


# 書き換えると警告されるが再代入は可能

# ミュータブル（string, Array, Hashなど）であれば定数は破壊的に変更できてしまう

class Product
	# 配列を凍結させるコード
	SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
	
	NAME = 'A product'
	SOME_NAMES = ['Foo', 'Bar', 'Baz']
	SOME_PRICE = {'Foo' => 1000, 'Baz'  => 3000}
end

# 文字列の破壊的変更

Product::NAME.upcase!
Product::NAME

# 配列に新しいキーと値を追加できる

Product::SOME_NAMES << 'Hoge'
Product::SOME_NAMES

# ハッシュに新キーと値

Product::SOME_PRICE['Hoge'] = 4000
Product::SOME_PRICE

class Product
	# 配列を凍結させるコード
	# SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
	# 配列そのものも、各要素についても凍結させるコード
	SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze

	def self.names_without_foo(names = SOME_NAMES)
		# freeseしているので破壊的変更を防ぐことができる
		names.delete('Foo')
		names
	end
end

Product.names_without_foo
# でも各要素の変更はできる
Product::SOME_NAMES[0].upcase!
Product::SOME_NAMES