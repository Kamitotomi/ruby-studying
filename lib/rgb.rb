#配列に対して範囲オブジェクトを渡す例。この場合、２，３，４が抜き出される
#a = [1, 2, 3, 4, 5]

#puts a[1..3]

#問１　n以上、ｍ以下、n以上、m未満を表現する

#def liquid?(temprature)
	#引数が０以上１００未満を現した
#	0 << temprature && temprature < 100
	
#end

#puts liquid?(-1)
#puts liquid?(0)
#puts liquid?(100)
#puts liquid?(99)

#問１（別）case文を使う

#def charge(age)

	#case age
		#0歳から5歳はタダ
#	when 0..5

#		0

		#6歳から12歳は300円

#	when 6..12

#		300
		#大人1000円
#	else

#		1000
		
#	end
	
#end

#puts charge(3)
#puts charge(6)
#puts charge(12)
#puts charge(22)


#範囲オブジェクトにto_aを渡すと連続する配列を作成できる

(1..5).to_a 
(1...5).to_a

#そんな使いかもいけんのねー

('bad'..'bag').to_a
('bad'...'bag').to_a

#配列作成その２

[*1..5]
[*1...5]

#テストコード

#def to_hex(r, g, b)
	#'#00000'
	
#end

#def to_hex(r, g, b)
#	hex = '#'

#	[r, g, b].each do |n|
#		hex += n.to_s(16).rjust(2, '0')
#	end

#	hex
	
#end

def to_hex(r, g, b)
	[r, g, b].inject('#') do |hex, n|
		hex + n.to_s(16).rjust(2, '0')
	end
end

#def to_ints(hex)
#	r = hex[1..2]
#	g = hex[3..4]
#	b = hex[5..6]
#	ints = []
#	[r, g, b].each do |s|
		#16進数にして配列に入れる
#		ints << s.hex
#	end
#	ints
#end

#上記のto_intsはmapメソッドで置き換え可能

def to_ints(hex)
	r = hex[1..2]
	g = hex[3..4]
	b = hex[5..6]
	[r, g, b].map do |s|
		s.hex
	end
end