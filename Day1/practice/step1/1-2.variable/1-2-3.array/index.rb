# 1
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
bob = User.new("bob")
alice = User.new("alice")
justin = User.new("bob")

p "---- array ---"
p []
p ["hoge", "fuga"]
p [1, 2]
p [bob, alice]

#2
p "---- index ---"
p ["hoge", "fuga"][0]
p [1, 2][0]
p [bob, alice][0]

#3
p "---- push ---"
p ["hoge", "fuga"].push("piyo")
p [1, 2].push(3)
p [bob, alice].push(justin)

#2
p "-------------- each ------------"
p "---- each1 ---"
["hoge", "fuga"].each do |t|
  p t
end

p "---- each2 ---"
[bob, alice].each { |t|
  p t.name
}

#2
p "---- map ---"
names = [bob, alice].map { |t| t.name }
p names