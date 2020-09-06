class Ticket
	# 運賃(fare)とstamped_at（乗車駅）を外部から取得するためのゲッターメソッド
	attr_reader :fare, :stamped_at
	# initializeで切符の購入額を受け取れるようにしている
	# initializeはnewでデータ作成するとき、必ず引数が必要になる。
	def initialize(fare)
		@fare = fare
	end

	# 乗車駅を取得するstampメソッド　@stamped_atというインスタンス変数に駅名を格納
	def stamp(name)
		@stamped_at = name
	end
end

# memo
#　インスタンス変数はクラスの内部で使えるものだから、本来は外部から参照できない。それを可能にしているのが
# attr_readerのところ