# ブロック付きでオープンすると、メソッドの実行後にクローズ
# File.open('some.txt', "w") do |file|
# 	file << 'Hello'
# 	# わざと例外
# 	1 / 0
# end

# 例外処理と戻り値
# 正常ならbegin節の最後の式が戻り値errorならrescue節の最後の式が戻り値

ret =
	begin
		'OK'
		1/0
	rescue 
		'error'
	ensure
		'ensure'		
	end
ret

# methodの戻り値として使用

def some_method(n)
	begin
		1/n
		'OK'
	rescue 
		'error'
	ensure
		'ensure'
	end
end

puts some_method(1)
puts some_method(0)

# rescue修飾子（以下のbeginを修飾子で短く）

require 'date'

# def to_date(string)
# 	begin
# 		Date.parse(string)
# 	rescue ArgumentError
# 		# パース出来ない場合はnil
# 		nil
# 	end
# end

# 短い方

def to_date(string)
	Date.parse(string) rescue nil
end




to_date('2020-09-17')

to_date('普通に文字列')

