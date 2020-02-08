# Integer
- **数値**は、全て **Integerクラス**の**インスタンス**になる。
- **数値**は**Integerクラス**の**メソッド**を使うことができる。
- **Stringクラス**で使えたが、**Integerクラス**で使えない**メソッドもある。**
- https://docs.ruby-lang.org/ja/latest/class/Integer.html

# 実践
### 標準出力
```ruby
p "---- integer ---"
p 0
p 1.11
```
```
"---- integer ---"
0
1.11
```

### class
```ruby
p "---- integer ---"
p 0.class()
p 1.11.class()
```
```
"---- integer ---"
Integer
Float
```

### 算術演算子
```ruby
p "---- Arithmetic operators ---"
p 1 + 1
p 2 - 1
p 2 * 3
p 4/2
p 3%2
p 2 ** 3
```
```
"---- Arithmetic operators ---"
2
1
6
2
1
8
```

### 比較演算子
```ruby
p "---- Comparison operator ---"
p 1 < 1 # 1.<(1)
p 1 <= 1
p 1 == 1
```
```
"---- Comparison operator ---"
false
true
true
```