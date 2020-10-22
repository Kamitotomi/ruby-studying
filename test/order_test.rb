# 料理注文システムのテストファイル

require 'minitest/autorun'
require './lib/index'
require './lib/menu'

class MenuTest < Minitest::Test

	# めーけー（毎回）呼ぶやつ
	def setup
		menu1 = Menu.new(name: "ピザ", price: 800)
		menu2 = Menu.new(name: "すし", price: 1000)
		menu3 = Menu.new(name: "コーラ", price: 300)
		menu4 = Menu.new(name: "お茶", price: 200)
	end

	def test_1
		selected_menu = 1
		count >= 3
		assert selected_menu.get_total_price(count) >= 2900
	end
end