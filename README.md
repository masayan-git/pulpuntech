# README

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

