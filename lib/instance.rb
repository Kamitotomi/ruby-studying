# インスタンス変数とローカル変数の違いで、分かりやすいの見つけました！

# Myclassというクラスがあるとする。

class Myclass
	def method_1
		# number = 100
		@number = 100
	end

	def method_2
		# number
		@number
	end
end
# この時Myclassのオブジェクトを作ってmethod_1で呼び出すと？
object = Myclass.new
puts object.method_1
# 100が呼ばれる。でも
puts object.method_2
# NameError　なぜだ。同じクラスのmethod_1で定義したじゃあないか。ふざけるな。
# なぜならそれはローカルだから。numberを@numberにしてみろ
# 結果、どちらも100