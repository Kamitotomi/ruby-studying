#ハッシュやシンボルを中心に例文を書いていくファイルです

#ハッシュ スペース地獄

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

#イタリア追加

currencies['itary'] = 'euro'
currencies

#ハッシュを使ったくりかえし

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key, value|
	puts "#{key} : #{value}"
end

#ハッシュの比較、取得削除

a = { 'x' => 1, 'y' => 2, 'z' => 3}

b = { 'x' => 1, 'y' => 2, 'z' => 3}
#これもtrue
b = { 'z' => 3, 'x' => 1, 'y' => 2}
a == b

#エイリアスメソッドは要素の個数を調べる

{}.size

{ 'x' => 1, 'y' => 2, 'z' => 3}.size

#忌まわしきRailsでおなじみ、deleteメソッド
#指定したキーに対応する要素を削除できる

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('india')

#シンボル
#そもそもシンボルとは以下のようなやつSymbolクラスのオブジェクトになる

:apple
:japan
:NagasawaMasami

:apple.object_id
:apple.object_id
:apple.object_id

'apple'.object_id
'apple'.object_id
'apple'.object_id
#シンボルは処理が早く、破壊的な変更が不可能

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['japan']

#ハッシュのキーをシンボルにする

currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
currencies[:us]

#"シンボル: 値"

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies[:japan]

#ハッシュには異なるデータ型を格納できる

person = {
	name: 'Alice',
	age: 25,
	#値が配列
	firends: ['Suzu', 'Ayumi'],
	#値がハッシュ
	phones: { home: '1234-5678', mobile: '4567-8900' }
}
person[:age]
person[:friends]
person[:phones][:mobile]

#キーワード引数

def buy_burger(menu, drink: true, potato: true)
	#メソッド
end

buy_burger('cheese', drink: true, potato: true)

#デフォルト値なしの場合

def buy_burger(menu, drink:, potato:)
	#メソッド
end

#キーワード引数を指定すればデフォルト値ありと同じように
buy_burger('cheese', drink: true, potato: true)
#キーワード引数を省略するとエラーになる

