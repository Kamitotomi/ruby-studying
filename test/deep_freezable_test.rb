require 'minitest/autorun'
# require './lib/deep_freezable'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
	def test_deep_freeze_to_array
		assert_equal ['japan', 'US', 'India'], Team::COUNTRIES

		assert Team::COUNTRIES.frozen?

		assert Team::COUNTRIES.all? { |country| country.frozen? }
	end

	def test_deep_freeze_to_hash
		# ハッシュの値は正しいか
		assert_equal(
			{'japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
			Bank::CURRENCIES
		)
		# ハッシュ自身のフリーズについて
		assert Bank::CURRENCIES.frozen?
		# ハッシュの要素（キーと値）のフリーズは？
		assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
	end
end