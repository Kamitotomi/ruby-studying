# 偏差値プログラム
# とりあえず合計点

# Studentクラスの定義

class Student

	attr_reader :first_name, :score

	def initialize(first_name, score)
		@first_name = first_name
		@score = score
	end

	# initializeは外部から参照できないのでとりあえずscoreだけ
	def individual_score
		"#{score}"
	end
	

end

students = []
students << Student.new('Haruka', 300)
students << Student.new('Akane', 300)

