# 制御構造
- https://docs.ruby-lang.org/ja/latest/doc/spec=2fcontrol.html
## 条件分岐
### if
- 条件式を評価した結果が真である時、then 以下の式を評価します。 
- if の条件式が偽であれば elsif の条件を評価します。 
- elsif 節は複数指定でき、全ての if および elsif の条件式が偽であったとき else 節があればその式が評価されます。

### unless 
- unless は if と反対で、条件式が偽の時に then 以下の式を評価します。unless 式にelsif を指定することはできません。

### case
- case は一つの式に対する一致判定による分岐を行います。
- when 節で指定された値と最初の式を評価した結果とを演算子 === を用いて比較して、一致する場合には when 節の本体を評価します。