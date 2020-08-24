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
