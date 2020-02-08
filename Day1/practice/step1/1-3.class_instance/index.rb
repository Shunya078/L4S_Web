class Human
  attr_accessor :name, :sex, :age
  def initialize(name, sex, age) #newの時に呼ばれるinitializeメソッド
    @name = name
    @sex = sex
    @age = age
  end

  def getOld
    @age += 1
  end

  def rename(new_name)
    @name = new_name
  end
end

justin = Human.new("justin", "male", 23)
p justin
justin.getOld()
p justin.age
justin.rename("koji-taniguchi")
p justin.name


class Greeter < Human
  def self_introduction
    "初めまして#{@name}です"
  end
end
koji = Greeter.new("谷口浩司", "male", 23)
p koji.self_introduction()