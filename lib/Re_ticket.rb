class Ticket

	attr_reader :fare, :get_on
	# fareとgetonはGateクラスで使うのでゲッターが必要である
	def initialize(fare)
		@fare = fare
	end

	def geton(name)
		# このメソッドは乗車駅を取得するものなのでnameを合わせる必要がある
		@get_on = name
	end

end

# ticket = Ticket.new(運賃)で作成するので、Gateクラスで登場するのはticketになる