require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
	def test_convert_hash_syntax
		old_syntax = <<~TEXT
		{
			:name => 'Alice',
			:age=>20,
			:gender  =>  :female
		}
		TEXT

		expected = <<~TEXT
		{
			name: 'Alice',
			age: 20,
			gender: :female
		}
		TEXT
		assert_equal expected, convert_hash_syntax(old_syntax)
	end
end

# :[a-z0-9_]+ は 「":"で始まり、アルファベットの小文字、または数字、またはアンダースコアが1文字以上続く」の意味
# 上記は":\w+"と同じ意味である

