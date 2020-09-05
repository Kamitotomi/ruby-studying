class Ticket
	# 運賃(fare)とstamped_at（乗車駅）を外部から取得するためのゲッターメソッド
	attr_reader :fare, :stamped_at
	# initializeで切符の購入額を受け取れるようにしている
	def initialize(fare)
		@fare = fare
	end

	# 乗車駅を取得するstampメソッド　@stamped_atというインスタンス変数に駅名を格納
	def stamp(name)
		@stamped_at = name
	end
end