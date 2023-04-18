# README


# user table   
|Column|Type|Option|   
| :--: | :--: | :--: |   
| email | string | NOT NULL, ユニーク制約 |   
| encrypted_password | string | NOT NULL |   
| name | string | NOT NULL |   
| profile | text | NOT NULL |   
| occupation | text | NOT NULL |   
| position | text | NOT NULL |   

# comments table   

| Column | Type | Option |   
| :--: | :--: | :--: |   
| content | text | NOT NULL |   
| prototype | references | NOT NULL, 外部key |   
| user | references | NOT NULL, 外部key |   


# prototypes table  
  
| Column | Type | Option |   
| :--: | :--: | :--: |   
| title | string | NOT NULL |   
| catch_copy | text | NOT NULL |   
| concept | text | NOT NULL |   
| user | references | NOT NULL, 外部key |   



# CHECK
## prepared file
- [x] ビューファイルをダウンロードした
- [x] アプリケーションを新規作成した
- [x] database.ymlにおいてencoding: utf8に修正した
- [x] データベースを作成した
- [x] README.mdにテーブル設計を記述した（デフォルトの記述はすべて消去します）
- [x] prototypesコントローラーを作成した
- [x] prototypesコントローラーにindexアクションを定義した（アクションの中には何も記述しない
- [x] viewsディレクトリの中の、prototypesコントローラーに対応するディレクトリにindex.html.erbを作成して、上記の記述をした
- [x] ルートパスにアクセスしたときに、prototypesコントローラーのindexアクションを呼び出す記述をroutes.rbにした
- [x] rails sでサーバーを起動し、ブラウザで表示を確かめた
- [x] 既存のindex.html.erbを、配布済みのindex.html.erbに置き換えた
- [x] 配布済みのstyle.cssを指示されたディレクトリに配置した
- [x] 配布済みの画像を、指定されたディレクトリに配置した
- [x] 既存のapplication.html.erbを、配布済みのapplication.html.erbに置き換えた
- [x] サーバーを再起動して、ブラウザで表示を確かめた
## devise 

- [ ]   deviseをGemfileに記述し、bundle installを実行した
- [ ]  rails g devise:installでdeviseのインストールをした
- [ ]  rails g devise userでUserモデルを作成した
- [ ]  マイグレーションファイルに、ユーザー名、プロフィール、所属、役職を追加した
      （メールアドレスとパスワードについてはデフォルトでマイグレーションファイルに記載されているため、追記の必要はない）
- [ ]  rails db:migrateを実行し、Sequel Proでusersテーブルが存在することを確かめた