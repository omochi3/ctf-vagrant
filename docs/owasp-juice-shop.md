# (OWASP Juice Shop

<https://github.com/bkimminich/juice-shop>

## Heroku に構築する手順

1. Heroku の[サインアップ](https://signup.heroku.com/jp "サインアップ") を行い、[ログイン]("https://id.heroku.com/login")する
1. Heroku にログイン後、Heroku Marketplace の [OWASP Juice Shop](https://elements.heroku.com/buttons/bkimminich/juice-shop "OWASP Juice Shop") にアクセスし、[Deploy to Heroku] ボタンをクリックする
1. [App name] を入力して、[Deploy app] ボタンをクリックする (10分程度で完了する)
1. [View] ボタンをクリックして正常に Deploy できていることを確認する

CTF で使用する場合、専用の設定を行う。

1. [Manage App] ボタンをクリックして、ダッシュボードを表示する
1. "Settings" > "Config Vars" > "Reveal Config Vars" の [KEY] に `NODE_ENV` を、 [VALUE] に **次の値** を入力して [Add] ボタンをクリックする
    1. FBCTF の場合、 `fbctf`
    1. CTFd の場合、 `ctf`
1. ダッシュボード右上の "More" > "Restart all dynos" をクリックし、全 Dyno をリスタートする
