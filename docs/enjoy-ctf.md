# CTF を楽しむ方法

## 基礎知識を身につける

CTF で脆弱性を探すためには、 Web アプリケーションが **「どのような原理で動作しているのか」「脆弱性が生まれる原理は何か」** を知っておく必要があります。

ここを押さえておかないと調査の取っ掛かりを掴めず、途方に暮れることとなります。

---

## Webサイトの基礎

Web サイトがどのような原理で実現されているのか理解する必要があります。

### HTTP の基礎

クライアントとサーバーが、どのようなルールで会話をしているのか解説しています。

- [HTTP - MDN](https://developer.mozilla.org/ja/docs/Web/HTTP)

### HTML の基礎

ブラウザーに表示される内容が、どのように生成されているのか解説しています。

- [HTML の基本 - MDN](https://developer.mozilla.org/ja/docs/Learn/Getting_started_with_the_web/HTML_basics)

---

## 脆弱性の基礎

脆弱性とは悪用可能なバグです。
これらがどのような原理で動作するのか解説しています。

- [安全なウェブサイトの作り方 - IPA](https://www.ipa.go.jp/security/vuln/websecurity.html)
- [OWASP Top 10 - 2017 - OWASP](https://www.owasp.org/images/2/23/OWASP_Top_10-2017%28ja%29.pdf)

---

## 脆弱性を探すツール

Web サイトと脆弱性の基礎を理解できたら、脆弱性を探すためのツールが必要になります。

### ブラウザーの開発者ツール

ブラウザーには開発者ツールと呼ばれる HTML や JavaScript などを調査・編集・デバッグする機能が実装されています。
ここでは Firefox の開発者ツールを紹介しますが、主要なブラウザーであれば同様の機能が実装されています。

- [開発ツール - MDN](https://developer.mozilla.org/ja/docs/Tools)

### チートシート

特定の脆弱性には発現するセオリーが存在します。それらチートシートをまとめたサイトを紹介します。

- [SQL Injection Cheat Sheet - Netsparker](https://www.netsparker.com/blog/web-security/sql-injection-cheat-sheet/)
- [OWASP Cheat Sheet Series](https://github.com/OWASP/CheatSheetSeries)

### その他

クライアントとサーバーの間に特化したプロキシサーバーを立てることで、通信を閲覧したり改ざんできます。

また様々なパラメーターを Web アプリにリクエストし、そのレスポンスから脆弱性を自動で探し出すツールなどもあります。

- [Fiddler - Free Web Debugging Proxy - Telerik](https://www.telerik.com/fiddler)
- [Burp Suite Scanner - PortSwigger](https://portswigger.net/burp)
- [OWASP Zed Attack Proxy Project - OWASP](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project)

---

## より詳しく知る

Web アプリケーションを開発するのであれば、ぜひとも読んでほしい本です。

- [体系的に学ぶ 安全なWebアプリケーションの作り方 第2版](https://www.sbcr.jp/products/4797393163.html)
