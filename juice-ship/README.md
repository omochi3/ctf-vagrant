# OWASP Juice Shop の構築手順

## 注意

1つのゲスト OS に、4つのサイト (ポート番号 3000-3003) が立ち上がる。

実行数を変更したい場合は、`Vagrantfile`, `bootstrap.sh`, `default.conf` を編集すること。


## 初期セットアップ

```bash
vagrant up
```

## 使い方

### 起動

```bash
vagrant up
```

### 停止

```bash
vagrant halt
```
