#配列に対して範囲オブジェクトを渡す例。この場合、２，３，４が抜き出される
#a = [1, 2, 3, 4, 5]

#puts a[1..3]

#問１　n以上、ｍ以下、n以上、m未満を表現する

def liquid?(temprature)
	#引数が０以上１００未満を現した
	0 << temprature && temprature < 100
	
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(100)
puts liquid?(99)

#問１（別）case文を使う

def charge(age)

	case age
		#0歳から5歳はタダ
	when 0..5

		0

		#6歳から12歳は300円

	when 6..12

		300
		#大人1000円
	else

		1000
		
	end
	
end

puts charge(3)
puts charge(6)
puts charge(12)
puts charge(22)
