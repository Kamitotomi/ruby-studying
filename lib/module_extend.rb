module Loggable

	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	# Loggableを特異メソッドとして呼ぶ
	extend Loggable

	def self.create_products(names)
		# logメソッドをクラスのメソッド内で呼び出す
		log 'create Products is called'
		"#{names}が二貫"
		# イカ二貫！！！
	end
end

Product.create_products('イカ')
