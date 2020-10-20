require "./menu"

# Menuクラスはmenu.rbに移動

# class Menu

# 	attr_accessor :name, :price

# 	# チェリー本とは少し違うが分かりやすいような気はする
# 	def initialize(name:, price:)
#     	self.name = name
#     	self.price = price
#   	end

# 	def info
# 		return "#{self.name} #{self.price}"
# 	end

# 	# 計算メソッド3個以上で1000円割引
# 	def get_total_price(count)
		
# 		total_price = self.price * count
# 		if count >= 3
# 			total_price -= 1000
# 		end
# 		# 戻り値ってなんだかんだずっとよくわからん
# 		return total_price
# 	end
# end

# menu1 = Menu.new

# menu1.name = "かにたま"
# menu1.price = 590

# menu1.info

# puts menu1.get_total_price(3)

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# 配列を用意　あれ、テストコードが思いつかないなあ。てへぺろでござんす

menus = [menu1, menu2, menu3, menu4]

menus.each do |menu|
	puts menu.info
end

