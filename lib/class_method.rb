# クラスメソッドの追加

class User
	def initialize(name)
		@name = name
	end
	# selfを付けるとクラスメソッドになる
	def self.create_users(names)
		# mapはブロックを評価した値を配列にして返すやつ
		names.map do |name|
			User.new(name)
		end		
	end
	# インスタンスメソッド
	def hello
		# インスタンス変数に保存されている名前を表示する
		"Hello, I am #{@name}"
	end
end

names = ['Alice', 'Bob', 'Marthin']
# クラスメソッドの呼び出し
users = User.create_users(names)
users.each do |user|
	# インスタンスメソッド呼び出し
	puts user.hello
end