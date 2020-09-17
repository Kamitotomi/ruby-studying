# print 'Text?: '
# text = gets.chomp

# print 'Pattern?: '
# pattern = gets.chomp

# regexp = Regexp.new(pattern)
# matches = text.scan(regexp)
# if matches.size > 0
# 	puts "Matched: #{matches.join(', ')}"
# else
# 	puts "Nothing matched."
# end

# 例外を入力したとき、もう一度入力できるように例外処理を実装する。

print 'Text?: '
text = gets.chomp
# 例外を入力したとき、もう一度入力できるように例外処理を実装する。
begin
	print 'Pattern?: '
	pattern = gets.chomp
	regexp = Regexp.new(pattern)
rescue RegexpError => e
	puts "Invalid pattern: #{e.message}"
	retry
end

matches = text.scan(regexp)
if matches.size > 0
	puts "Matched: #{matches.join(', ')}"
else
	puts "Nothing matched."
end
