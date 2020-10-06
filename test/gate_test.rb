# 改札機プログラムのテストコード

require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
	# テストメソッド実行の前に毎回これが呼ばれる
	def setup
		@umeda = Gate.new(:umeda)
		@juso = Gate.new(:juso)
		@mikuni = Gate.new(:mikuni)
	end

	# 最初のテストシナリオ　150円の切符を購入　梅田から十三　結果：　出場できる
	def test_umeda_to_juso
		ticket = Ticket.new(150)
		@umeda.enter(ticket)
		assert @juso.exit(ticket)
	end
	# 2つ目のシナリオ　150円の切符を購入　梅田から三国　結果：　運賃不足
	def test_umeda_to_mikuni_when_fare_is_not_enough
		ticket = Ticket.new(150)
		@umeda.enter(ticket)
		refute @mikuni.exit(ticket)
	end
	# 3つ目のシナリオ　190円　梅田in 三国out　出場できる
	def test_umeda_to_mikuni_when_fare_is_enough
		ticket = Ticket.new(190)
		@umeda.enter(ticket)
		assert @mikuni.exit(ticket)
	end
	# 4つ目　　　　　150円　十三in 三国out　出場できる
	def test_juso_to_mikuni
		ticket = Ticket.new(150)
		@juso.enter(ticket)
		refute @mikuni.exit(ticket)
	end
end