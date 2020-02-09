# javascriptとjQuery

# javascriptは絶対使わないとWebサイトは作れないのか？
**A. 使わなくても良いです**
HTMLやCSSだけでも十分に表現できるので、必ずしもjavascriptを使わなければならないということはありません。
CSSにも、[擬似クラス](https://developer.mozilla.org/ja/docs/Web/CSS/Pseudo-classes)といって、`hover` や `checked` など要素の状態に合わせてスタイルを変えることができます。また、CSS animation を使うことで、アニメーションを表現することができます。
ただ、DOM*1を操作したり、マウスの位置やスクロールの距離といったブラウザに対するイベントを取得し、それをサイトに反映させたい場合は、javascriptが必要になってきます。

*1:htmlによって表現されるドキュメント構造のこと。どの要素がどの要素に対しての親なのか子なのかなどなど...**詳しくは調べてみてください！！！**

## DOMの操作とは？
DOMの操作とは、例えば、新しい要素を追加しや要素のスタイルを変更することです。
`change_dom` のフォルダの素材を元に説明していきます。

### styleの変更 
以下のコードは、 `.change-green` クラスを持つ要素をクリックすると、`.text-area` クラスをもつ要素のスタイルを変えるスクリプトです。
`.text-area` クラスをもつ要素の `style属性` を変更していることから、DOMを操作していると言えます。
```javascript
$(".change-green").click(function () {
  $('.text-area').css("color", "green")
})
```

### 要素の変更 
以下のコードは、`.change-hello` クラスをもつ要素をクリックすると、`.text-area` クラスをもつ要素の子要素を `Change World!` に変更するスクリプトです。
```javascript
$(".change-hello").click(function () {
  $('.text-area').html('<p>Change World!</p>')
})
```

## まとめ
上記は簡単な例なので、もっと知りたい人は調べてみてください！
javascriptを使うと、ある要素をクリックして、他の要素のDOMを変更するなど動的な操作ができるようになります。CSSでは、ある要素の状態変化を検知して(親子関係に無い)他の要素の状態を変えるということはできません。
いきなり出来なくても良いですが、javascriptを使えると表現の幅が広がって、メンバーに伝えられる表現の幅も大幅にアップします！自分やメンバーが表現したいことが、CSSだけで可能なのか、javascriptが必要なのか、適切に判断できる力を身につけてください！！


# javascriptとjQueryの違いは何ですか？
**A. jQueryはjavascriptのコードがまとまった、便利なスクリプトの集まりです(これをライブラリという)。**
`jQuery` を使うと、コードをシンプルに直感的に書くことが出来ます。
素材は  `textbook` というフォルダにあります。
ここで、注意して欲しいのは `jQuery` は `javascript` で書かれたコードがまとまっているものです。つまり、 **`jQuery` という言語はありません。あくまで、`jQuery` は `javascript`のライブラリです。** 
`jQuery` は `javascript`のライブラリなので、`.html` ファイルに `HTML` が書けることと同様に、`.js` ファイルに `jQuery`を書くことが出来ます。

## 実際にjQueryファイルの中身をみてみる
実際に教科書で使われている、`jQuery`ファイルの中身を、下のリンクを押してみてみましょう。

- https://code.jquery.com/jquery-2.1.4.js

`ctrl or cmd + F` で `document.getElementById` と検索してみると、実際に `jQuery` のコードの中で javascriptのコードが使われていることがわかります。

# javascriptファイルの読み込む場所の違いは何ですか？
**A. DOM要素にアクセスする必要があるか無いかの違いです。**
textのjavascriptファイルの読み込み場所を `<head>`タグの中で読み込むとどうなるでしょうか？

**`error`フォルダの素材を開いてみてください**

hello world は１つしか表示されておらず、クリックしても色は変わりません。
また、consoleには 
```
Uncaught TypeError: Cannot set property 'innerHTML' of null
    at index.js:11
```
というエラーが出ています。
ここで疑問に思うのは、全く同じコードのはずなのに、

1. なぜ、`hello world` が表示されているのに、**クリック**しても色が変わらないのか。
2. なぜ `jQuery`の方は表示されて、`javascript` で書いたコードは表示されないのか。

## 解説
この、２つの疑問を解消するために、まずブラウザがどのようにしてページを表示させているのか、javascriptのコードはいつ実行されるのかについて、簡単に知っておく必要があります。
よくわからない人は、資料フォルダにあるスライドをみてから解説を見てね。
↓
↓
↓
## ブラウザの表示/javascriptのコードの実行について
ブラウザは、htmlファイルを上から解析していきます。また、javascriptのファイルがあれば、そのファイルをすぐに実行していきます。つまり、htmlファイルを上から解析していっているので、`<head>`タグの中にjavascriptのファイルがあれば、すぐに実行します。
**以下`error`フォルダの素材を元に説明していきます**
## 1. なぜ、`hello world` が表示されているのに、クリックしても色が変わらないのか。
以下のコードは、**`.text-area`クラスをもつ要素を取得して**、その要素がクリックされた時の関数を渡しています。
```javascript
$(".text-area").click(function () {
  $(this).css("color", "green")
})
```
ブラウザはhtmlファイルを上から順番に解析していいるので、このスクリプトが実行される時ブラウザは当然 `<script src="index.js"></script>` までしか解析が終わっていません。
```html
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <script
    src="https://code.jquery.com/jquery-2.1.4.js"
    integrity="sha256-siFczlgw4jULnUICcdm9gjQPZkw/YPDqhQ9+nAOScE4="
    crossorigin="anonymous"></script>
  ココまで！ → <script src="index.js"></script> ← ココまで！
  ↓ これ以降にどのような要素があるのかブラウザはまだ知らない ↓
  </head>
  <body>
    <div class="text-area" id="text-area"></div> ← もちろんこの要素のことも知らない
    <div class="text-area2" id="text-area2"></div>
  </body>
  </html>
```
しかし、 `<script src="index.js"></script>` 以降**どのような要素があるのかブラウザはまだ知らない状態**でブラウザは javascriptファイルを実行してしまうので、**`.text-area`クラスをもつ要素を取得出来ていません。** 
そのため、クリックしても、色が変わらないと言う現象が起きています。

## 2. なぜ `jQuery`の方は表示されて、`javascript` で書いたコードは表示されないのか。
```javascript
document.getElementById("text-area2").innerHTML = "<p>Hello World!</p>"
```
これは、`javascript` で書いたコード ですが、 `1.` でも説明したように、以下のスクリプトは、`text-area2` と言うidをもつ要素のことを知らない状態で表示させようとしているので、表示に失敗して、以下のようなエラーが出ています。
```
Uncaught TypeError: Cannot set property 'innerHTML' of null
    at index.js:11
```
ではなぜ、以下のコードは表示されるのか。
```javascript
$(function () {
  $('.text-area').html('<p>Hello World!</p>')
})
```
実はこれは、`jQuery` の便利な機能で `$()`に関数を渡すと、**htmlファイルの解析が全て終わった時点で、スクリプトを実行することが出来る**ようになります。
つまり、解析が全て終わっているので、上記の関数を実行する時点で、この要素のことを取得できるため、hello worldを表示させる事が出来ています。
```html
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <script
    src="https://code.jquery.com/jquery-2.1.4.js"
    integrity="sha256-siFczlgw4jULnUICcdm9gjQPZkw/YPDqhQ9+nAOScE4="
    crossorigin="anonymous"></script>
  </head>
  <body>
    ↓ 解析が終わっているので、この要素のことを取得できる ↓
    <div class="text-area" id="text-area"></div> 
    <div class="text-area2" id="text-area2"></div>
  </body>
  </html>
```
以下のコードは、`$()` で囲われていなにので、色が変わらないと言うことになります。
試しに、`$()` で囲ってみるとうまくいきます。
```javascript
$(".text-area").click(function () {
  $(this).css("color", "green")
})
↓
$(function () {
  $(".text-area").click(function () {
    $(this).css("color", "green")
  })
})
```

## まとめ
ブラウザがhtmlファイルを上から解析し、javascriptファイルを即座に実行しているため、**DOM要素にアクセスする必要があるjavascriptファイルの場合は読み込む箇所を意識する必要がある。** もし、うまくjavascriptが実行されないとか、エラーが出ている場合は、読みこみ箇所が違う可能性があるかもしれないですね！

## 余談
javascriptの読み込みに関して余裕がある人は以下も読んでみてください！

**`script_load`フォルダを元に説明してきます。**

`script_load`フォルダの `index.html` は、`<head>`内で読み込んでいますが、エラーなく実行することが出来ています。`jQuery`については先ほど説明しましたが、`javascript`では以下のようになります。(かなり長いですね)
```javascript
document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("text-area2").innerHTML = "<p>Hello World!</p>"
});
```
先ほどと同様に、実際に教科書で使われている、`jQuery`ファイルの中身で

- https://code.jquery.com/jquery-2.1.4.js

`ctrl or cmd + F` で `document.addEventListener( "DOMContentLoaded"` と検索してみると、実際に `jQuery` のコードの中で javascriptのコードが使われていることがわかります。

また、**`script_load`フォルダの`defer_async`フォルダを開いてみてください**
このフォルダの素材では、スクリプトの読み込み位置や内容は **`error` フォルダと全く同じ**なのに、エラーなく動作しています。資料のスライドの中にも登場しているのですが、このフォルダでは `defer` 属性と言うものを `<script>` タグにつけています。
```html
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <script
    src="https://code.jquery.com/jquery-2.1.4.js"
    integrity="sha256-siFczlgw4jULnUICcdm9gjQPZkw/YPDqhQ9+nAOScE4="
    crossorigin="anonymous"></script>
   ↓これ↓
  <script defer src="index.js"></script>
</head>
```
この属性を付けることで、html全体の読み込みが完了してから、このファイルのスクリプトを実行してくれるようになります。