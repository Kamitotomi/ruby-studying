#keys

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
puts currencies.keys

#values
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
puts currencies.values

#has_key?

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
puts currencies.has_key?(:japan)

puts currencies.has_key?(:itary)

# **

h = { us: 'dollar', india: 'rupee' }
#変数hのキーと値を**で展開さ
{ japan: 'yen', **h }

#上のコードはmergeを使うと同じ効果を得られる
h = { us: 'dollar', india: 'rupee' }
{ japan: 'yen' }.merge(h)

#　**引数　任意のキーワードを引き受ける 無効なキーワードは通常、エラーになるが？

def buy_burger(menu, drink: true, potato: true, **others)
	#othersはハッシュとして渡される

	puts others
end

buy_burger('fish', drink: true, potato: false, salad: true, chiken: false)

#optionは任意のハッシュを受け付ける

def buy_burger(menu, options = {})
	puts options
end
#ハッシュを第二引数として渡す

buy_burger('fish', { 'drink' => true, 'potato' => false})

#ハッシュから配列へ、配列からハッシュへ

#to_a
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.to_a 

#to_h

currencies = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
currencies.to_h

#ハッシュの初期値はなに？

#h = {}
#h[:foo]
#nilになる。nil以外の値を返すには、Hash.newでハッシュを作成し、初期値を指定する

#h = Hash.new('hello')
#h[:foo]

#Hash.newにブロックを与えると？
#初期値を返し、ハッシュに指定されたキーと初期値を同時に設定する

h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]
h[:bar]

#ハッシュにはキーと値が追加されていることを確認
puts h

#あるあるイディオム

#国名に応じて通過を返す

def find_currency(country)
	currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
	currencies[country]
end

def show_currency(country)
	currency = find_currency(country)

	if currency
		currency.upcase
	end
end

show_currency(:japan)

show_currency(:itary)

find_currency(:japan)


#||=を使った自己代入

limit = nil

limit ||= 10
limit


#!!を使った真偽値の型変換

def user_exists?
	#DBなどからユーザーを探す(なければnil)
	user = find_user
	if user
		true
	else
		false
	end
end

user_exists(user)