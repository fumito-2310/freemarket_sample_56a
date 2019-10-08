# mercari DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|id|integer|null:false|
### Association
- has_many :items
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|name|string|index:true,null:false|
|image|text|index:true|
|user_id|integer|null: false, foreign_key: true|
|id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user
