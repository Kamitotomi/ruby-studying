# selfなしで呼ぶか、ありで呼ぶか、直でインスタンス変数を参照か。
# 参照のパターン

class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def hello
		# selfなしでnameメソッドを呼ぶ
		"Hello, I am #{name}"
	end

	def hi
		# selfで
		"Hi, I am #{self.name}"
	end

	def my_name
		"My name is #{@name}"
	end
end

user = User.new('俺')
user.hello
user.hi
user.my_name

# selfの有無で話が変わってくるケース

class User
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def rename_to_bob
		# selfなしでnameメソッドを呼ぶ
		name = "Bob"
	end

	def rename_to_gibson
		# selfで
		self.name = 'Gibson'
	end

	def rename_to_marray
		@name = 'Marray'
	end
end

user = User.new('Ayumi')

user.rename_to_bob
user.rename_to_gibson
user.rename_to_marray