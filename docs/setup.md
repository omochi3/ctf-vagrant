# 事前準備

CTF は物理端末上に直接構築したり Docker 上に構築することも可能ですが、普段から使うものでもないのでここでは仮想 OS 上に構築します。
また構築を自動化するため、Vagrant を使用します。

## Chocolatey

### Chocolatey とは

Windows のパッケージ管理ツールです。

PowerShell やコマンドプロンプトから、アプリケーションのインストール・更新・アンインストールを行うことができます。

```PowerShell（管理者権限）
choco install <パッケージ名>
choco update all
```

### Chocolatey のインストール

PowerShell またはコマンドプロンプトを管理者権限で立ち上げます。
（`[Windowsキー + X](スタートを右クリック) -> [A]`）

[Chocolatey サイト](https://chocolatey.org/)の [Install ページ](https://chocolatey.org/install)にあるコマンドを実行します。

#### PowerShellの場合

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

#### コマンドプロンプトの場合

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

## VirtualBox, Vagrant

PowerShell を管理者権限で立ち上げ、以下のコマンドを実行します。

### インストール

```PowerShell
choco install -y virtualbox vagrant
```

### 確認

```PowerShell
choco search -la
```

### 更新

```PowerShell
choco update -y all
```

---

## OWASP Juice Shop (やられサイト)

<https://github.com/bkimminich/juice-shop>

参加者ごとに環境が必要になるので、参加者自身に用意してもらうのがよさそうです。
それが難しい場合、仮想 OS 上に構築したサイトを利用してもらうとよいでしょう。

### Heroku に構築する手順

1. Heroku の[サインアップ](https://signup.heroku.com/jp "サインアップ") を行い、[ログイン]("https://id.heroku.com/login")する
1. Heroku にログイン後、Heroku Marketplace の [OWASP Juice Shop](https://elements.heroku.com/buttons/bkimminich/juice-shop "OWASP Juice Shop") にアクセスし、[Deploy to Heroku] ボタンをクリックする
1. [App name] を入力して、[Deploy app] ボタンをクリックする (10 分程度で完了する)
1. [View] ボタンをクリックして正常に Deploy できていることを確認する

CTF で使用する場合、専用の設定を行う。

1. [Manage App] ボタンをクリックして、ダッシュボードを表示する
1. "Settings" > "Config Vars" > "Reveal Config Vars" の [KEY] に `NODE_ENV` を、 [VALUE] に **次の値** を入力して [Add] ボタンをクリックする
    1. FBCTF の場合、 `fbctf`
    1. CTFd の場合、 `ctf`
1. ダッシュボード右上の "More" > "Restart all dynos" をクリックし、全 Dyno をリスタートする

### 仮想 OS 上に構築する手順

＜作業中＞  
<https://github.com/omochi3/ctf-vagrant/tree/wip/juice-ship> の内容を見直す。

---

## FBCTF(スコアサーバー)

<https://github.com/facebook/fbctf>

仮想 OS 上に構築します。
