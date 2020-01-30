# github-slack
- 前のセクションでは、githubにコードをあげるための準備、リポジトリの作成を行いました。
- このセクションでは、githubでの活動(githubにコードをあげる,issueを使って質問する,詳しくは後述)をslackで可視化するために、githubとslackの連携を行います。
- githubとskackの連携が完了して、開発を進めていくと、以下の写真のような状態になります。
[![Image from Gyazo](https://i.gyazo.com/9860a79b58d23cdeacd2de9fd1073fc5.png)](https://gyazo.com/9860a79b58d23cdeacd2de9fd1073fc5)

# 1.github app に slack をインストールする
- まず、github に [slack app(インストールURL)](https://github.com/apps/slack)をインストールします。
[![Image from Gyazo](https://i.gyazo.com/6e3f21ef0b9ad7526de88db6cbbcad75.png)](https://gyazo.com/6e3f21ef0b9ad7526de88db6cbbcad75)
- 次に、[管理画面](https://github.com/settings/installations)でインストールが完了しているか確認して、写真の様になっていれば、インストール完了です。
[![Image from Gyazo](https://i.gyazo.com/b3a8575efb3546b49d870715cc047bf1.png)](https://gyazo.com/b3a8575efb3546b49d870715cc047bf1)

# 3. slack で github に singin する
- 次に、slackでgithubとの連携を行います。
1. `lfs7-52webs-west`で `/github signin` と入力して Enter を押してください。
[![Image from Gyazo](https://i.gyazo.com/66d1130d83b4dd802f074156b97460e2.png)](https://gyazo.com/66d1130d83b4dd802f074156b97460e2)
2. 次に、slackに以下の写真の様な返答が出てくるので、`Connect github account` を押してください。
[![Image from Gyazo](https://i.gyazo.com/fe6fe559990fa5fb1f0c7de667b51849.png)](https://gyazo.com/fe6fe559990fa5fb1f0c7de667b51849)
3. すると、こんな画面が出てくるので、 `Connect github account` を押してください。
[![Image from Gyazo](https://i.gyazo.com/c04267dea6b9ed601c3f4ef83f9a8ae4.png)](https://gyazo.com/c04267dea6b9ed601c3f4ef83f9a8ae4)
4. 今までgithubとslackを連携させとがなければ、こんな画面が出てくると思うで、 `Authorize Slack by GitHub` を押してください。出てこない人は、一旦無視して、進めてみてください。
[![Image from Gyazo](https://i.gyazo.com/35b2e3acaf96224f84ce68b2d29944af.png)](https://gyazo.com/35b2e3acaf96224f84ce68b2d29944af)
5. slackに戻って、これが表示されていることを確認してください。
[![Image from Gyazo](https://i.gyazo.com/4ec32bb01759cb822bfebec4573fa254.png)](https://gyazo.com/4ec32bb01759cb822bfebec4573fa254)
6. 最後に、[ここ](https://github.com/settings/apps/authorizations)で認証がうまくいったかを確認します。下の写真の様になっていれば、認証完了です！
[![Image from Gyazo](https://i.gyazo.com/a222a67e45d61f029cfd10abb3f100a2.png)](https://gyazo.com/a222a67e45d61f029cfd10abb3f100a2)

# 4. slack で リポジトリーを subscribe する
1. slackにgithubの活動の通知を流すためには、slackで `/github subscribe {username}/{repository name}　comments` のコマンドを実行する必要があります。**(commentsはissueへの返信をslackに流すために必要です)**
2. ここでは、slackに先ほど作成した`count`のリポジトリの通知を受け取れるように、`{username}` を自分のgithubのusernameに置き換て、slackで`/github subscribe {username}/count comments` と打ってみよう
3. `{username}`、githubで確認することができます。
  - 例えば、 username が `juschin` だったら、 `juschin/count` みたいな
  - usernameはgithubのここです↓写真参照↓

[![Image from Gyazo](https://i.gyazo.com/c1ecbb26f4968001d7bba03ebc2cb0df.png)](https://gyazo.com/c1ecbb26f4968001d7bba03ebc2cb0df)

- slackに `/github subscribe {username}/count comments` を打ち込んだ後の様子。

[![Image from Gyazo](https://i.gyazo.com/9bb4d8781a9d8c4dc99ee3b36254dc95.png)](https://gyazo.com/9bb4d8781a9d8c4dc99ee3b36254dc95)

4. **`Subscribed to {username}/count` と表示されていればokです！**

# 5.通知がslackに届くか確認する
  - githubに戻って、`count` のリポジトリを開いて、 `①issue というタブを押して`、`② New issue というボタンを押してね`。
  - 後で詳しく説明しますが、この `issue` というものを用いて質問をしていくことになるので、`issue`のことは覚えておいてね！
  [![Image from Gyazo](https://i.gyazo.com/b6ad80aca242611021ea54c0d3c27c47.png)](https://gyazo.com/b6ad80aca242611021ea54c0d3c27c47)

  - これから、issueに記入してもらうのですが、issueは **markdown という記法**を使うと綺麗に書くことができます。詳しくは後述するので、今回はとりあえず `issue` の作成ができれば問題ないです。
  - 簡単な自己紹介を入力して、 `submit new issue` を押してね。
  [![Image from Gyazo](https://i.gyazo.com/0a4ff21809dcb8996d2231779d1951d2.png)](https://gyazo.com/0a4ff21809dcb8996d2231779d1951d2)

  - slackにさっき投稿した issue が表示されていれば、slackとgithubの連携の完了です。
  [![Image from Gyazo](https://i.gyazo.com/3cc3b74d00d04809b511bbbe768e4b58.png)](https://gyazo.com/3cc3b74d00d04809b511bbbe768e4b58)
