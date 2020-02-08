# 1
p "-------- string -------"
greeting1 = "hello world"
greeting2 = String.new("hello world")
p greeting1
p greeting2
p ""

# 2
p "-------- class type -------"
p greeting1.class
p greeting2.class()

# 3
p "-------- 文字列の結合 -------"
p greeting1 + greeting2
p greeting1.+ greeting2
p greeting1.+(greeting2)

# 4
p "-------- 文字列の比較 -------"
p greeting1 == greeting2
p greeting1 != greeting2

# 5
p "-------- 色々な文字列操作 -------"
p greeting1.reverse
p greeting1.include?("hello")
p greeting1.gsub("hello", "goodbye")

# 6
p "-------- methods -------"
p greeting1.methods
