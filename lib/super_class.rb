class DVD < Product
	attr_reader :runnning_time

	def initialize(name, price, runnning_time)
		# スーパークラスにも存在している属性
		#@name = name
		#@price = price
		#同じものを書くならこうした方がシンプル
		super(name, price)
		@runnning_time = runnning_time
	end
end

dvd = DVD.new('A great movie', 1000, 120)
dvd.name
dvd.price
dvd.runnning_time
