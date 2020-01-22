# github-slack
- githubとslackを連携できる様にします。

# 1.github app に slack をインストールする
- まず、[slack app](https://github.com/apps/slack)で、github app に slack をインストールします。
[![Image from Gyazo](https://i.gyazo.com/6e3f21ef0b9ad7526de88db6cbbcad75.png)](https://gyazo.com/6e3f21ef0b9ad7526de88db6cbbcad75)
- 次に、[ここ](https://github.com/settings/installations)でインストールが完了しているか確認して、写真の様になっていれば、インストール完了です。
[![Image from Gyazo](https://i.gyazo.com/b3a8575efb3546b49d870715cc047bf1.png)](https://gyazo.com/b3a8575efb3546b49d870715cc047bf1)

# 3. slack で github に singin する
- まず、`チャンネル名`で `/github signin` と入力して Enter を押してください。
[![Image from Gyazo](https://i.gyazo.com/66d1130d83b4dd802f074156b97460e2.png)](https://gyazo.com/66d1130d83b4dd802f074156b97460e2)
- 次に、slackに以下の写真の様な返答が出てくるので、`Connect github account` を押してください。
[![Image from Gyazo](https://i.gyazo.com/fe6fe559990fa5fb1f0c7de667b51849.png)](https://gyazo.com/fe6fe559990fa5fb1f0c7de667b51849)
- すると、こんな画面が出てくるので、 `Connect github account` を押してください。
[![Image from Gyazo](https://i.gyazo.com/c04267dea6b9ed601c3f4ef83f9a8ae4.png)](https://gyazo.com/c04267dea6b9ed601c3f4ef83f9a8ae4)
- さらに、こんな画面が出てくるので、 `Authorize Slack by GitHub` を押してください。
[![Image from Gyazo](https://i.gyazo.com/35b2e3acaf96224f84ce68b2d29944af.png)](https://gyazo.com/35b2e3acaf96224f84ce68b2d29944af)
- slackに戻って、これが表示されていることを確認してください。
[![Image from Gyazo](https://i.gyazo.com/4ec32bb01759cb822bfebec4573fa254.png)](https://gyazo.com/4ec32bb01759cb822bfebec4573fa254)
- 最後に、[ここ](https://github.com/settings/apps/authorizations)で認証がうまくいったかを確認します。下の写真の様になっていれば、認証完了です！
[![Image from Gyazo](https://i.gyazo.com/a222a67e45d61f029cfd10abb3f100a2.png)](https://gyazo.com/a222a67e45d61f029cfd10abb3f100a2)

# 4. slack で リポジトリーを subscribe する
- slackにgithubの通知を流せる様にします。
- まず、githubで自分の username を確認して、以下の `{username}` を自分のものに置き換える。
  - 例えば、 username が `juschin` だったら、 `juschin/count` みたいな
  - usernameはgithubのここです↓写真参照↓

[![Image from Gyazo](https://i.gyazo.com/c1ecbb26f4968001d7bba03ebc2cb0df.png)](https://gyazo.com/c1ecbb26f4968001d7bba03ebc2cb0df)

- slackに `/github subscribe {username}/count` と打ってみよう
- 写真の様になってれば、okです。

[![Image from Gyazo](https://i.gyazo.com/9bb4d8781a9d8c4dc99ee3b36254dc95.png)](https://gyazo.com/9bb4d8781a9d8c4dc99ee3b36254dc95)


# 5.通知がslackに届くか確認する
  - githubに戻って、`count` のリポジトリを開いて、 `①issue というタブを押して`、`② New issue というボタンを押してね`。
  [![Image from Gyazo](https://i.gyazo.com/b6ad80aca242611021ea54c0d3c27c47.png)](https://gyazo.com/b6ad80aca242611021ea54c0d3c27c47)

  - 簡単な自己紹介を入力して、 `submit new issue` を押してね。
  [![Image from Gyazo](https://i.gyazo.com/0a4ff21809dcb8996d2231779d1951d2.png)](https://gyazo.com/0a4ff21809dcb8996d2231779d1951d2)

  - slackにさっき投稿した issue が表示されていれば、slackとgithubの連携の完了です。
  [![Image from Gyazo](https://i.gyazo.com/3cc3b74d00d04809b511bbbe768e4b58.png)](https://gyazo.com/3cc3b74d00d04809b511bbbe768e4b58)

# 6.残りのリポジトリを登録する
- github と slackの連携が確認できたら、残りのリポジトリもslackと連携させていきましょう。
  - `/github subscribe {username}/wikipedia`
  - `/github subscribe {username}/express`
  - `/github subscribe {username}/login`
  - `/github subscribe {username}/todo`
  - `/github subscribe {username}/form`
  - `/github subscribe {username}/shopping`
- 全てのリポジトリの連携が終わったら、githubとslackの連携は終了です！