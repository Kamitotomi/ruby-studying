class Ticket
	# fareとgetonはGateクラスで使うのでゲッターが必要である
	def initialize(fare)
		@fare = fare
	end

	def geton(name)
		# このメソッドは乗車駅を取得するものなのでnameを合わせる必要がある
		@geton = name
	end

end