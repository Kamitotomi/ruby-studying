# yieldでブロックの処理を呼び出す

# def greeting
	# puts 'おはよう'
	# ブロックの処理を呼び出す（紐づけ）複数回書けば書いた分だけ
	# yield
	# yield
	# yield
	# puts 'こんばんは'
# end

# greeting do
	# puts 'こんにちは'
# end

# ブロックが渡されたかを確認

# def greeting
	# puts 'おはよう'
	# 確認
	# if block_given?
		# text = yield 'こんにちは'
		# puts text
	# end
	# puts 'こんばんは'
# end

# greeting

# greeting do
	# puts 'こんにちは'
# end

# 2回繰り返す
# greeting do |text|
	# text * 2
# end

# 具体的な使用方法（ブロックを他のメソッドに渡せるようになるメリットを活用したもの）
# 日本語版のgreetingメソッド

def greeting_ja(&block)
	texts = ['おはよう', 'こんにちは', 'こんばんは']
	# ブロックを別のメソッドに引き渡す
	greeting_common(texts, &block)
end

# 英語版のgreetingメソッド

def greeting_en(&block)
	texts = ['good morning', 'hello', 'good evening']
	# ブロックを別のメソッドに
	greeting_common(texts, &block)
end

# 出力時の共通メソッド
def greeting_common(texts, &block)
	puts texts[0]
	# ブロックを実行する
	puts block.call(texts[1])
	puts texts[2]
end

# 日本語版の呼び出しgreeting_jaメソッドでは、引数でgreeting_commonに配列とブロックそのものを渡している？
greeting_ja do |text|
	text * 2
end

greeting_en do |text|
	text.upcase
end

# 渡されたブロックに対してメソッドを呼び出したり操作できるというメリット

def greeting(&block)
	puts 'おはよう'
	text = 
	if block.arity == 1
		# ブロック引数が1個の場合
		yield 'こんにちは'
	elsif block.arity == 2
		yield 'good', 'morning'
	end
	puts text
	puts 'こんばんは'
end

greeting do |text_1, text_2|
	text_1 * 2 + text_2 *2
end

greeting do |text|
	text * 2
end