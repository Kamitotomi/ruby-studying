#[]で文字列の配列を作成する

['apple', 'melon', 'orange']

# %wで文字列の配列を作成する(!で囲む)

%w!apple melon orange!

#同じ目的で（）で囲む場合

%w(apple melon orange)

#charsメソッド

'Ruby'.chars

#引数で渡した区切り文字で文字列を配列に分割するsplit

'Ruby, Java, PHP, Perl'.split(',')


a = Array.new(10){
	|n| n % 3 + 1
}
a

fruits = ['apple', 'orange', 'melon']

fruits.each_with_index {
	|fruit, i| puts "#{i}: #{fruit}"
}

#mapとwith_index

fruits = ['apple', 'orange', 'melon']
#mapとして処理しつつ添え字も受け取る iには0,1,2...と要素の添え字が入る。
fruits.map.with_index {|fruit, i|"#{i}: #{fruit}"}

#配列をブロック引数に引き渡されるパターン（面積を出す例文）

#dimensions = [
	#[縦, 横]
	#[10, 20],
	#[30, 40],
	#[50, 60],
#]

#areas = []
#ブロック引数が1個だとブロック引数の値が配列になる

#dimensions.each do |dimension|
#	length = dimension[0]
#	width = dimension[1]	
	
	#areas << length * width
#end

#puts areas

#よりシンプルに書くためには、ブロック引数を工夫するとよい

dimensions = [
	#[縦, 横]
	[10, 20],
	[30, 40],
	[50, 60],
]
#面積の結果を格納する配列

areas = []
#配列の数だけブロック引数を用意すると、各要素の値が
dimensions.each do |length, width|
	areas << length * width
end

puts areas


#timesメソッド

sum = 0
#5回処理を繰り返す
5.times{|n| sum += n}
sum

#nからｍまで数値を１ずつ増やしながら処理するときはupto

#a = []
#10.upto(14){|n| a << n}
#a
#上記はdowntoで逆の結果になる

#step	引数は(上限, 増減する大きさ)
#a = []
#1.step(10, 2){|n| a << n}
#a


#繰り返し処理を構文で行う場合
#1.while
#配列の要素が5個になるまで
a = []

while a.size < 5
	a << 1
end

# until
a = [10, 20, 30, 40, 50]
until a.size <= 3
	a.delete_at(-1)
end

#繰り返し処理用の制御構造
#break

numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
	puts n
	break if n == 5
end

#catch & returnで全ての繰り返しから脱出

fruits = ['apple', 'orange', 'melon']
numbers = [1, 2, 3]
catch :done do
	fruits.shuffle.each do |fruit|
		numbers.shuffle.each do |n|
			 puts "#{fruit}, #{n}"
			if fruit == 'orange' && n == 3
				#catchと一致しないタグをthrowする
				throw :foo
			end
		end
	end
end


ret = 
	catch :done do
		throw :done, 123
	end
ret

#next

numbers = [1,2,3,4,5]
numbers.each do |n|
	#偶数なら中断して次に
	next if n.even?
	puts n
end

numbers = [1,2,3,4,5]
i = 0

while i < numbers.size
	n = numbers[i]
	i += 1
	#while内でnextを使用
	next if n.even?
	puts n
end

#redo(繰り返し処理)のやり直し

foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
	print "#{food}は好きですか？"
	#sampleは配列からランダムに１要素を選択する
	answer = ['はい', 'いいえ'].sample
	puts answer
	#はいと答えなければ聞き返す。なんか怖いなそれ。
	redo unless answer == 'はい'
	
end