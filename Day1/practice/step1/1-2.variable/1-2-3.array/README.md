# Array
- 配列とは、複数の値を１つのオブジェクトとして扱うための、データ構造。
- https://docs.ruby-lang.org/ja/latest/class/Array.html

# 実践
### 標準出力
```ruby
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
```
```
"---- array ---"
[]
["hoge", "fuga"]
[1, 2]
[#<User:0x00007fe158073f28 @name="bob">, #<User:0x00007fe158073ca8 @name="alice">]
```

### 配列アクセス
```ruby
p "---- index ---"
p ["hoge", "fuga"][0]
p [1, 2][0]
p [bob, alice][0]
```
```
"---- index ---"
"hoge"
1
#<User:0x00007fe803071618 @name="bob">
```

### push
```ruby
p "---- push ---"
p ["hoge", "fuga"].push("piyo")
p [1, 2].push(3)
p [bob, alice].push(justin)
```
```

```


### each
```ruby
p "---- each1 ---"
["hoge", "fuga"].each do |t|
  p t
end

p "---- each2 ---"
[bob, alice].each { |t|
  p t.name
}
```
```
"---- each1 ---"
"hoge"
"fuga"
"---- each2 ---"
"bob"
"alice"
```

### map
```ruby
p "---- map ---"
names = [bob, alice].map { |t| t.name }
p names
```
```
"---- map ---"
["bob", "alice"]
```
