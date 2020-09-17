# puts 'start'

# module Greeter
	# def hello
		# 'hello'
	# end
# end

# 例外処理を組み込む

# begin
	# greeter = Greeter.new
# rescue 
	# puts '例外が発生したがこのまま続行する'
# end

# puts 'End'

# 例外処理の流れ method_1にだけ例外処理を記述する

def method_1
	puts 'method_1 start.'
	begin
		method_2
	rescue
		puts '例外が発生しましたよ！'
	end
	puts 'method_1 end.'
end

def method_2
	puts 'method_2 start.'
	method_3
	puts 'method_2 end.'
end

def method_3
	puts 'method_3 start'
	# ZeroDivisionErrorを発生させる
	1 / 0
	puts 'method_3 end.'
end

method_1

#　例外オブジェクトから情報を取得する

begin
	1 / 0
rescue => e
	puts "エラークラス: #{e.class}"
	puts "エラーメッセージ: #{e.message}"
	puts "バックトレース ------"
	puts e.backtrace
	puts "-------"
end

# 補足する例外の限定

begin
	1 / 0
rescue ZeroDivisionError
	puts "０で除算"
end

begin
	'abc'.foo
rescue ZeroDivisionError
	puts "0で除算しました"
rescue NoMethodError
	puts "存在しないメソッドです"
end

# 例外発生時にもう一度やり直すretry

retry_count = 0
begin
	puts '処理開始'
	# 例外を発生させる
	1 / 0
rescue 
	retry_count += 1
	if retry_count <= 3
		puts "retryします。 (#{retry_count}回目)"
		retry
	else
		puts 'retryに失敗しました。'
	end
end

# raiseメソッド

def currency_of(country)
	
	case country
	
	when :japan
		'yen'
	when :us
		'dollar'
	when :india
		'rupee'
	else
		# 意図的な例外
		# raise "無効な国名です。　#{country}"
		# RuntimeerrorではなくArgumentErrorを発生させる
		raise ArgumentError, "無効な国名です。　#{country}"
	end
end

currency_of(:japan)
currency_of(:us)
currency_of(:itary)


# ブロック付きでオープンすると、メソッドの実行後にクローズ
File.open(some.txt, "w") { |file|  }
	file << 'Hello'
end