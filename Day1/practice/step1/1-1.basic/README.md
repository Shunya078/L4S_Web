# ターミナル操作
0. ターミナルとは
- CUI(character user interface)
- macでいう所の、FinderとかはGUI(Graphical User Interface)と呼ばれる
- **コマンドでフォルダやファイルの操作を行うこと(コンピュータに命令する)**
- Dockerでの、アタッチシェルって何をしてる？

1. ターミナルを開いてデスクトップまで**移動する(cdコマンド)**
```shell
cd Desktop/ 
```

2. デスクトップに**新規フォルダを作成する(mkdirコマンド)**
```shell
mkdir Day1
```

3. 作成したフォルダに移動して、**新規ファイルを作る(touchコマンド)**
```shell
cd Day1
touch index.rb
```

4. ruby ファイルが作成できたか、**今いるフォルダの中のファイル/フォルダを確認する(lsコマンド)**
```shell
ls
index.rb 
```

5. ターミナルから、今いるフォルダをvscodeで開く
```shell
code .
```

# エントリーポイントとエンドポイント
- プログラムの始まりと、プログラムの終わり
- 多言語の main function みたいなやつ
- **rubyはソースコードの上から順番に処理が始まる**

```ruby
p "---- string ---" # ← エントリーポイント
p "hello world"
p "---------------" # ← エンドポイント
```
↓
```
"---- string ---"
"hello world"
"---------------"
```

# プログラムの実行(標準出力)
0. 標準出力(ターミナルに表示するくらいの理解で良いです)
    -  rubyの標準出力(https://docs.ruby-lang.org/ja/latest/method/Kernel/v/=3e.html)
1. vscodeで開いた `index.rb` に下のコードを書いて、実行できることを確認する
```ruby
p "---- print ---"
puts "hello world"
print "hello world"
p "hoge"
p "-------"
```
ターミナル
```
ruby index.rb
```
↓
```
"---- print ---"
hello world
hello world"hoge"
"-------"
```