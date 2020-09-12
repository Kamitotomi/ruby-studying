# Kernelモジュール

# Object.include?(Kernel)

# まあよくわかんないけど putsとかpが使えるのはselfがObjectクラスのインスタンスだからとかいうことらしいです。

# モジュールとインスタンス変数

module NameChanger
	def change_name
		# include先の名前を変更するメソッド
		@name = 'はるか'
	end
end

class User
	include NameChanger

	attr_reader :name

	def initialize(name)
		@name = name
	end
end

user = User.new('Haruka')
puts user.name

user.change_name
puts user.name

# ただし、モジュールとミックスイン先でインスタンス変数を共有するのはあまりよくないらしい。知らんけど

# 正しい例

module NameChanger
	def change_name
		# セッターメソッド経由でデータを変更する
		self.name = 'はるか'
	end
end

class User
	include NameChanger
	# ゲッターとセッターを用意
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

user = User.new('Haruka')
user.name

user.change_name
user.name
