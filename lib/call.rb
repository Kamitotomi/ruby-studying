# ブロックをメソッドの引数として受け取る

def greeting(&block)
	puts 'おはよう'
	puts block.class
	# callメソッドの使用
	unless block.nil?
		text = block.call('こんにちは')
		puts text
	end
	# text = block.call('こんにちは')
	# puts text
	puts 'こんばんは'
end

greeting

greeting do |text|
	text * 2
end