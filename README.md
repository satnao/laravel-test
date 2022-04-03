# Laravel test

## git clone

```
git clone git@github.com:satnao/laravel-test.git
```

## 開発環境を作る

```
cp -r .devcontainer.example .devcontainer
cp -r .vscode.example .vscode
cp .env.example .env
```

このあとvscodeの「Reopen in Contaienr」

## Laravelの準備

↓のコマンドはvscodeのターミナルから実行

```
composer install
php artisan key:generate
```

## サーバー起動

```
php artisan serve --host=0.0.0.0 --port=8080
```

http://localhost:8080 を開く

## DB設定

.envを修正。

```
DB_HOST=db
DB_USERNAME=root
```

DB名「laravel」を作成。

↓を実行するとテーブル等が作成される。

```
php artisan migrate
```
