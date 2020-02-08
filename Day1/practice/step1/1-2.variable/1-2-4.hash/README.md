# hash
- ハッシュテーブル(連想配列とも呼ぶ)のクラスです。
- ハッシュは任意の種類のオブジェクト(キー)から任意の種類のオブジェクト(値)への関連づけを行うことができます。
- https://docs.ruby-lang.org/ja/latest/class/Hash.html

## 実践
### 標準出力
```ruby
p "---- hash ---"
hash1 = {}
hash2 = { "a" => "b", "c" => "d" }
hash3 = { a: "b", c:"d" }
p hash1
p hash2
p hash3
```
```
"---- hash ---"
{}
{"a"=>"b", "c"=>"d"}
{:a=>"b", :c=>"d"}
```

### アクセス
```ruby
p hash2["a"]
p hash3[:a]
```
```
"---- access ---"
"b"
"b"
```

### 追加
```ruby
hash2["e"] = "f"
hash3[:e] = "f"
p hash2
p hash3
```
```
"---- add ---"
{"a"=>"b", "c"=>"d", "e"=>"f"}
{:a=>"b", :c=>"d", :e=>"f"}
```
