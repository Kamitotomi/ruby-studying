# Procオブジェクトはブロックをオブジェクト化するためのクラス（.~で呼び出せるようになる）

#　"Hello!"という文字列を返すProcオブジェクトを作成する

hello_proc = Proc.new { 'Hello' }
# procオブジェクトの実行

puts hello_proc.call

# Proc.newの代わりにproc
add_proc = proc{|a, b| a + b}

puts add_proc.call(10, 20)


def greeting(&block)
	puts 'おはよう'
	text = block.call('こんにちは')
	puts text
	puts 'こんばんは'
end

# procオブジェクトを作成してそれをブロックの代わりとしてgreetingメソッドに渡す

repeat_proc = Proc.new{|text| text * 2}
greeting(&repeat_proc)