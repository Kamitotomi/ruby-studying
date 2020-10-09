# 偏差値プログラム

# 合計点数はこれで出せる(inject使用の場合)
Avarage = 310
# もう既に平均点と標準偏差が出ていると仮定
Stdevp = 8.9

points = [50, 60, 70, 70, 80]
# 個人の合計点。これを集めてn（全体数）で割る必要がある
sum = points.inject(0){ |result, n| result + n }

sum
# 合計は330点。仮にこの点数を取った人物をSとしてその偏差値は

deviation = (50 + 10 * (sum - Avarage) / Stdevp).floor
#　偏差値が72と出る。

# 平均点と、個々の合計点と標準偏差が必要になる

# sumのブロックそのものを配列にして、sum.count？を分母にする。分子はsum自体を更に繰り返し処理したもの？
# Avarage = 全生徒の

# student1.偏差値計算メソッド　=> student1の偏差値

class Student

	def initialize(name, score)
		# 合計点がで出るやつ
		# sum = こいつの合計
		@name = name
		@score = score
	end

	def introduction
		"I am #{@name}. My score is #{@score}. プラス５０で#{@score + 50}"
	end

end

student1 = Student.new('Ken', 380)
student1.introduction