# メソッドの公開レベル

# public（デフォルト）

# class User
	# def hello
		# 'Hello!'
	# end
# end
# 
# user = User.new
# publicなので外部から呼び出し可能
# puts user.hello

# privateメソッド
# class User
	
	# private
	
	# def hello
		# 'Hello!'
	# end
# end

# user = User.new
# privateなので外部から呼び出しできない
# puts user.hello
# privatemethodEroor~

# railsでなんとなく使っていたが、要するにprivateは「レシーバーを指定して呼び出せない」ということよって、self付きでもエラー
# 以下ならいける

# class User
	# 
	# def hello
		# "Hello!, I am #{name}"
	# end
	
	# private
	
	# def name
		# 'Marthin'
	# end
# end

# user = User.new
# privateなので外部から呼び出しできない
# puts user.hello

# privateはサブクラスでも呼び出せる オーバーライドもできる
class Product

	def to_s
		# nameはスーパークラスのprivate
		"作品名: #{name}"
	end
	
	private
	def name
		'鬼滅の刃'
	end
end

class DVD < Product
	def name
		'化物語'
	end
end

product = Product.new
# そのままProductクラスのメソッド
puts product.to_s

dvd = DVD.new
# オーバーライドしたDVDクラスのメソッドが使われる
puts dvd.to_s