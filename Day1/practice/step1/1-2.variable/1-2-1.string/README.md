# String
- **文字列の値**は、全て **Stringクラス**の**インスタンス**になる。
- **文字列の値**は**Stringクラス**の**メソッド**を使うことができる。
- https://docs.ruby-lang.org/ja/latest/class/String.html

## 実践
### 1.文字列の値は、全て Stringクラスのインスタンスになる
- 下の2行は同じことをしている
- `String.new("hello world")`は**Stringクラス**の**インスタンス**である`"hello world"`という**文字列の値**を返す
```ruby
p "-------- string -------"
greeting1 = "hello world"
greeting2 = String.new("hello world")
blank = ""
p greeting1
p greeting2
p blank
```
↓
```
"-------- string -------"
"hello world"
"hello world"
""
```

## 文字列の値はStringクラスのメソッドを使うことができる
### クラスの確認
```ruby
p "-------- class type -------"
p greeting1.class
p greeting2.class()
```
```
"-------- class type -------"
String
String
```
### 文字列の結合
```ruby
p "-------- 文字列の結合 -------"
p greeting1 + greeting2
p greeting1.+ greeting2
p greeting1.+(greeting2)
```
```
"-------- 文字列の結合 -------"
"hello worldhello world"
"hello worldhello world"
"hello worldhello world"
```

### 文字列の比較
```ruby
p "-------- 文字列の比較 -------"
p greeting1 == greeting2
p greeting1 != greeting2
```
```
"-------- 文字列の比較 -------"
true
false
```

### 色々な文字列操作
```ruby
p "-------- 色々な文字列操作 -------"
p greeting1.reverse
p greeting1.include?("hello")
p greeting1.gsub("hello", "goodbye")
```
```
"-------- 色々な文字列操作 -------"
"dlrow olleh"
true
"goodbye world"
```

### 全てのmethod
```ruby
p "-------- methods -------"
p greeting1.methods
```
```
[:include?, :%, :*, :+, :count, ...]
```
[リファレンス](https://docs.ruby-lang.org/ja/latest/class/String.html)