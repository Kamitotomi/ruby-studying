# protectedメソッド
# 体重は外部から取得できないようにする場合

class User
	# weightは外部公開しない
	attr_reader :name

	def initialize(name, weight)
		@name = name
		@weight = weight
	end
	# ユーザー同士の体重を比較するメソッド other_userより重い場合はtrue
	def heavier_than?(other_user)
		other_user.weight < @weight
	end

	protected

	# protected 同じクラスかサブクラスであればレシーバー付きで呼び出せる
	def weight
		@weight
	end
end

user1 = User.new('Alice', 50)

user2 = User.new('Bob', 70)

user1.heavier_than?(user2)

user2.heavier_than?(user1)

# user1.weightはエラー