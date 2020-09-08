# 前提としてRubyは単一継承である。1つのクラスは1つのスーパークラスしか持てない。しかし、is-aでなくても複数のクラスにまたがって
# 同じような機能が必要になるケースがある。今回は製品クラスとユーザークラス



class Product
	def title
		log 'title is called'
		'A great movie'
	end

	private

	def log(text)
		puts "[LOG]#{text}"
	end
end

class User
	def name
		log 'name is called'
		'Alice'
	end

	private

	def log(text)
		puts "[LOG]#{text}"
	end
end

product = Product.new
product.title

user = User.new
user.name



# そういえば引数ってメソッド内で使ったり、外部では代入したりするよねえ。

# ログを出力する処理が重複しているからこうする
# ミックスインと呼ばれるもの

module Loggable
	# include先でもprivateとして扱われる
	private

	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	# 作ったモジュールをinclude
	include Loggable
	
	def title
		log 'title is called'
		'A great movie'
	end

	private

	def log(text)
		puts "[LOG]#{text}"
	end
end

class User
	include Loggable
	
	def name
		log 'name is called'
		'Alice'
	end

	private

	def log(text)
		puts "[LOG]#{text}"
	end
end

product = Product.new
product.title

user = User.new
user.name
