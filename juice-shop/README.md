# OWASP Juice Shop の構築手順

## 注意

1つの仮想マシン上に、3つの juice-shop が立ち上がります。
ポート番号は 3000 から連番で採番します。

起動する仮想マシン数を調整したい場合は、`Vagrantfile` 内の `GUEST_NUMBER` に台数を設定してください。
（デフォルトは 3 ）

仮想マシン名とポートの関連性は以下の通りです。

- 仮想マシン名: `server1` -> 3000,3001,3002
- 仮想マシン名: `server2` -> 3003,3004,3005
- 仮想マシン名: `server3` -> 3006,3007,3008

仮想マシン上の juice-shop の台数を変更したい場合は `Vagrantfile`, `bootstrap.sh`, `default.conf` を編集してください。

juice-shop は `fbctf` モードで起動します。
その他のモードで起動させたい場合は `bootstrap.sh` 内の `NODE_ENV` を編集してください。

## 初期セットアップ

```bash
vagrant up
```

## 使い方

### 起動

```bash
# 全仮想OSを立ち上げる場合
vagrant up
# 特定の仮想OSを立ち上げる場合
vagrant up server1
```

### 停止

```bash
vagrant halt
```

### その他

```bash
# 仮想マシンの再起動
vagrant reload
# 仮想マシンのステータス表示
vagrant status
# 全仮想マシンのステータス表示
vagrant global-status

# boxの一覧表示
vagrant box list
# boxの追加
vagrant box add **/**
# boxの更新
vagrant box update --box **/**
# boxの削除
vagrant box remove **/**

# スナップショットの一覧表示
vagrant snapshot list
# スナップショットの作成
vagrant snapshot save スナップショット名
# スナップショットの復元
vagrant snapshot restore スナップショット名
# スナップショットの削除
vagrant snapshot delete スナップショット名
```
