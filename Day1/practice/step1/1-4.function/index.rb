def hello    # 引数のないメソッド。
  puts "Hello, world!"
end

def foo(a, b)    # 引数のあるメソッド。括弧を省いてdef foo a, bとも
  a + 3 * b
end

p hello
p hello()

p foo(6, 5)