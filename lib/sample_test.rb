require 'minitest/autorun'

class SampleTest < Minitest::Test
	def test_sample
		#期待する式、　実行する式の順番
		assert_equal 'RUBY', 'ruby'.capitalize
	end
end