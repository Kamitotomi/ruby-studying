#クラスを使うとはどういうことか？

#例　ユーザーを表すデータ
#ハッシュと配列を使うなら

#users = []
#users << { first_name: 'Alice', last_name: 'Hirose', age: 25 }
#users << { first_name: 'Haru', last_name: 'Kinoshita', age: 28 }

#氏名を作成するメソッド
#def full_name(user)
#	"#{user[:first_name]} #{user[:last_name]}"
#end

#ユーザーのデータを表示

#users.each do |user|
#	puts "氏名: #{full_name(user)}, 年齢: #{user[:age]}"
#end

#でもタイプミスだとnilしか返ってこなくて分かりにくいし、勝手に追加変更ができちゃう！

#Userクラスを定義する


#class User
	#attr_reader :first_name, :last_name, :age

	#def initialize(first_name, last_name, age)
		#@first_name = first_name
		#@last_name = last_name
		#@age = age
	#end
	#氏名を作成するメソッド

	#def full_name
	#	"#{first_name} #{last_name}"	
	#end
#end

#ユーザーのデータを作成する

# users = []
# users << User.new('Alice', 'Hirose', '25')
# users << User.new('Ayase', 'Miura', '30')


#表示
# users.each do |user|
	# puts "氏名: #{user.full_name}, 年齢: #{user.age}"
# end

# クラスからオブジェクトを作成するのがnew

class User
	def initialize(name, age)
		puts "name: #{name}, age:#{age}"
	end
end

User.new('Alice', 20)



class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end
	
	
end

user = User.new('Alice')
user.name
# 変える
user.name = 'Bob'


# attr_accessorはインスタンス変数を読み書きできるメソッド。簡単に書き換えられる。


