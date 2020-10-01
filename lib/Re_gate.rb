# 改札機プログラムの復習

class Gate
	# 駅名の配列
	STATIONS = [:kiyose, :higashikurume, :hibarigaoka, :hoya, :oizumigakuenn, :syakujiikouen, :nerimatakanodai, :hujimidai, :nakamurabashi, :nerima, :sakuradai, :ekoda, :higashinagasaki, :siinamachi, :ikebukuro]
	# 運賃の配列
	FARES = [147, 178, 210, 242, 272]
	# ICカードで買うパターンにするとしたらこれではない感ある。

	def initialize(name)
		# このプログラムではnameと言ったら駅名
		@name = name
	end

	def enter(ticket)
		
	end

	def calculate
		
	end

	def exit
		# 最終的に必要な料金を表示できるようにしてみたい
	end

end