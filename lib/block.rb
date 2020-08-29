#空の配列を用意して他の配列をループ処理した結果を埋め込んでいくのはmapでできる。

numbers = [1, 2, 3, 4, 5]

new_numbers = numbers.map{|n| n * 10}

puts new_numbers

#numbers = [1, 2, 3, 4, 5, 6]
#戻り値が真になった要素だけが集められる

#even_numbers = numbers.select{|n|n.even?}

#puts even_numbers

#上と同様で3の倍数の場合以外を除くコード

#numbers = [1, 2, 3, 4, 5, 6]

#non_multiples_of_three = numbers.reject{|n| n % 3 == 0}

#puts non_multiples_of_three

#ブロックの第一引数は初回のみinjectの引数0が入る。ブロックの戻り値が次回のresultに引き継がれる。
#numbers = [1, 2, 3, 4]

#sum = numbers.inject(0) {|result, n| result + n}

#puts sum

#numbers = [1, 2, 3, 4, 5, 6]

#sum = numbers.select{|n| n % 3 == 0}

#puts sum


#a = ['ruby', 'java', 'perl'].map {|s| s.upcase}

#上の書き換え（&:使用）

#a = ['ruby', 'java', 'perl'].map(&:upcase)

#puts a

#a = [1, 2, 3, 4, 5]
#1個目、３個目、長さ
#b = a.values_at(0, 2, 4)

#puts b

#set class
require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])

puts a | b
puts a - b
puts a & b

#pushメソッド

#a = []

#a.push(1)
#a.push(2, 3)

#splat展開（配列がそのまま入ってしまう問題の解消）

a = []
b = [2, 3]
a.push(1)
#配列を*付きで追加する
a.push(*b)

def greeting(*names)
	"#{names.join('と')}, こんにちは！"
end

puts greeting('中村さん', '田中さん', '佐藤さん')