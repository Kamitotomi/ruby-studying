# Menuクラス

class Menu
	# インスタンス変数=@とかって思ってたけど、attr_accessorでもうできてる感じ？
	attr_accessor :name, :price

	# チェリー本とは少し違うが分かりやすいような気はする
	def initialize(name:, price:)
    	self.name = name
    	self.price = price
  	end

	def info
		return "#{self.name} #{self.price}"
	end

	# 計算メソッド3個以上で100円割引
	def get_total_price(count)
		
		total_price = self.price * count
		if count >= 3
			total_price -= 100
		end
		# 戻り値ってなんだかんだずっとよくわからん
		return total_price
	end
end