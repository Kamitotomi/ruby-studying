# deep_freezeメソッド
# 確認　モジュールのインスタンス（.new）は作成できないのがクラスとの違い

module DeepFreezable
	def deep_freeze(array_or_hash)
		case array_or_hash
		# 配列の各要素をfreeze
		when Array 
			array_or_hash.each do |element|
				element.freeze
			end
		
		when Hash
			array_or_hash.each do |key, value|
				key.freeze
				value.freeze
			end
		end
		# 配列自体をfreeze (deepfreezeメソッドの戻り値になる)
		array_or_hash.freeze
	end
end
