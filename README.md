# テーブル設計

## houseworks テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| title              | string | null: false               |
| manner             | string | null: false               |


### Association

- belongs_to :plan

## planss テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| start_time         | datetime   | null: false                    |
| housework          | references | null: false, foreign_key: true |

- has_many :houseworks
