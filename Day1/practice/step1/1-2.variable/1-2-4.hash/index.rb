# 1
p "---- hash ---"
hash1 = {}
hash2 = { "a" => "b", "c" => "d" }
hash3 = { a: "b", c:"d" }
p hash1
p hash2
p hash3

# 2
p "---- access ---"
p hash2["a"]
p hash3[:a]

# 3
p "---- add ---"
hash2["e"] = "f"
hash3[:e] = "f"
p hash2
p hash3