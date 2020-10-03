# 改札機プログラムの復習
# 「切符」って…。今日日聞かねーな～

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
		ticket.geton(@name)
	end
	# 急に出てきた感のticket。Gateクラスだからややこしいけど、テストコード見るとここでごちゃごちゃやってんのは結局tticketのことっていうイメージ
	# 要するに、ticket = Ticket.new()をユーザーにさせることが前提の引数ticketである。


	def calculate
		from = STATIONS.index(ticket.get_on)
		# ticiket.get_onはTicketクラスにあり。attr_readerでget_onは使えるようになっている。後、get_onは駅名
		# なんにせよ、エラーは起きないようにはなっていますな
		to = STATIONS.index(@name)
	end
	# なんかGateクラスなのに平然とticketが出てくるのほんとムカつく。


	def exit
		# 最終的に必要な料金を表示できるようにしてみたい
	end

end

# シーケンスを見るとTicketを引っ張ってくるというよりはGateクラスで定めたメソッドをTicketクラスで使っている感じ？ていうか順番的にはそういう流れ？
# initializeメソッドで指定しているからGate.new(:kiyose)とかでもう@nameというインスタンス変数に格納されているわけ。
# だからcalculateのSTATIONS.index(@name)の@nameはその場合、kiyoseなわけね。