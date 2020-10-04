require 'minitest/autorun'
require './lib/Re_gate'
require './lib/Re_ticket'

class GateTest < Minitest::Test
	def setup
		@kiyose = Gate.new(:kiyose)
		@higashikurume = Gate.new(:higashikurume)
		@hibarigaoka = Gate.new(:hibarigaoka)
		@hoya = Gate.new(:hoya)
		@oizumigakuenn = Gate.new(:oizumigakuenn)
		@syakujiikouen = Gate.new(:syakujiikouen)
		@nerimatakanodai = Gate.new(:nerimatakanodai)
		@hujimidai = Gate.new(:hujimidai)
		@nakamurabashi = Gate.new(:nakamurabashi)
		@nerima = Gate.new(:nerima)
		@sakuradai = Gate.new(:sakuradai)
		@ekoda = Gate.new(:ekoda)
		@higashinagasaki = Gate.new(:higashinagasaki)
		@siinamachi = Gate.new(:siinamachi)
		@ikebukuro = Gate.new(:ikebukuro)
	end
	# 絶対別の方法あるだろ感が凄いですが私には思いつきません。

	def test_kiyose_to_higashikurume
		
		ticket = Ticket.new(210)
		@kiyose.enter(ticket)
		assert @higashikurume.exit(ticket)
		
	end

end