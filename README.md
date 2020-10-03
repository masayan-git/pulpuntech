# Palpuntech
※開発中
## 概要
未経験からエンジニアになりたい人向けのブログです。

## 発案者
[masayan-git](https://github.com/masayan-git/ "masayan-git") バックエンド担当

## メンバー
[toramuryo796](https://github.com/toramuryo796/ "toramuryo796") フロントエンド担当

[mztnktm43](https://github.com/mztnktm43/ "mztnktm43") フロントエンド担当

発案者とメンバーはテックキャンプで共に学習した仲間です！

## 目的
- テックキャンプで学習したプログラミングを使って世の中の課題を解決し、収益化する。
- チーム開発を経験する。
## 収益化の方法
- 広告
##　目指した課題解決
### ペルソナ設定
- 未経験からエンジニアになることを検討している
- テックキャンプで学習した結果、どの程度技術がつくのか知りたい
- テックキャンプ卒業後就職できるのか不安がある

### 課題
未経験からエンジニアになりたいという方が増えてきています。
私たちも未経験からエンジニアになりたいと決意しテックキャンプ受講を決意しました。
しかし未経験が故に先が見えず決断仕切れないという人も多いと思います。
私たちがどのように考え、行動したのかを発信することで、ペルソナの悩みを解決できると考えました。

###　投稿予定の記事テーマ
#### テックキャンプについて
- 本当に技術が身につくのか
このブログをあえてRuby on Railsで作成することでイメージがつくと考えました。
- コロナでオンライン授業に切り替わって本当にやり切れるのか。
実際にやり切れた私たちの感想や工夫したことを記事にします。
- PCについて
テックキャンプではMacで開発を行います。
WindowsからMacへ移行して不自由なく操作できるのかという不安について記事にします。
#### その他
メンバー全員が年齢、境遇などが異なるため、より多くの方に刺さる記事をかけると考えています。

### 要件定義
#### 管理画面
複数人で運営するため、投稿記事テーマや、内容が被らないよう、過去に投稿された記事が一目でわかるように開発します。
#### 記事投稿機能
記事を投稿する機能です。
複数人で投稿するため、使いやすいUIにすることを目指します。
#### 記事編集、削除機能
記事を編集、削除する機能です。
#### 記事のカテゴリー分け機能
記事をカテゴリー毎に分て検索しやすくします。




## masters(管理者)

| Column   |Type    | Options     |
| -------- |------- | ----------- |
| name     |string  | null: false |
| password |integer | null: false |

### Association
has_many :article

## articles（記事）

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| title        | string      | null: false                    |
| content      | text        | null: false                    |
| master       | references  | null: false, foreign_key: true |

### Association
belongs_to :master
has_many :article_categories
has_many :categories, through: :article_categories

## categories(記事のタグ)

| Column       | Type      | Options                       |
| ------------ | --------- | ----------------------------- |
| name         | string    | null: false, uniqueness: true |

### Association
has_many :article_categories
has_many : article, through: :article_categories

## article_categories(中間テーブル)

| Column   | Type       | Options                        |
| -------- | ---------  | -----------------------------  |
| article  | references | null: false, foreign_key: true |
| category      | references | null: false, foreign_key: true |

### Association
belongs_to : article
belongs_to : category

