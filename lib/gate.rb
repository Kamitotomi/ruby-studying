
# 改札機プログラムのClass

class Gate
	# 運賃と駅名を配列として用意
	STATIONS = [:umeda, :juso, :mikuni]
	FARES = [150, 190]
	# initializeで引数として駅名を受け取れるようにする
	def initialize(name)
		@name = name
	end

	# enterメソッドとexitメソッドを実装
	# enterメソッドは引数として渡されたticket（切符）に自分の駅名を保存
	def enter(ticket)
		# Ticketクラスのstampメソッドを呼び出す
		ticket.stamp(@name)
	end



	def exit(ticket)
		# 適切な運賃と切符の購入額を比較
		fare = calc_fare(ticket)
		fare <= ticket.fare
	end

	def calc_fare(ticket)
		from = STATIONS.index(ticket.stamped_at)
		# indexは配列の中から引数に合致する要素の添え字（（:juso）なら１）を取得
		to = STATIONS.index(@name)
		distance = to - from
		FARES[distance - 1]
	end
end