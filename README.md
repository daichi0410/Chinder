# タイトル
## ■ アプリの概要
アプリケーション
<br>

<p text-align: center>
  <img src="" height="500px"; width="49%"; />
  <img src="" height="500px"; width="49%"; />
  <img src="" height="500px"; width="49%"; />
  <img src="" height="500px"; width="49%"; />
</p>



## ■ コンセプト


## ■ 内容


## ■ なぜ作ろうと思ったか 



## ■ 機能一覧


## ■ 使用技術


## 🌐 App URL

- テストユーザ用アカウント(Email / Password)
  - Email: 
  - Password:

#### <操作方法(概要)>  


## 💬 Usage
https://github.com/daichi0410/Chinder


## ■ 機能紹介

### 機能
・<br>
<p>
<img src="" height="550px"; width="65%"; />
</p>

# DB設計
## chat_roomsーブル
|Column|Type|Options|
|------|----|-------|
|chat_rooms_id|integer|null: false|
### Association
-  has_many :chat_messages
-  has_many :chat_room_users

## chat_room_userテーブル
|Column|Type|Options|
|------|----|-------|
|chat_room_user_id|integer|null: false|
|chat_rooms_id|integer|null: false|
|user_id|integer|null: false|
### Association
-  belongs_to :chat_room
-  belongs_to :user

## chat_messagesテーブル
|Column|Type|Options|
|------|----|-------|
|chat_messages_id|integer|null: false|
|message|string|null: false|
|chat_rooms_id|integer|null: false|
|user_id|integer|null: false|

### Association
-  belongs_to :chat_room
-  belongs_to :user

## ■ 今後実装したい技術
・Dockerの導入  
