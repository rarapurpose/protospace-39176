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

- [x]   deviseをGemfileに記述し、bundle installを実行した
- [x]  rails g devise:installでdeviseのインストールをした
- [x]  rails g devise userでUserモデルを作成した
- [x]  マイグレーションファイルに、ユーザー名、プロフィール、所属、役職を追加した
      （メールアドレスとパスワードについてはデフォルトでマイグレーションファイルに記載されているため、追記の必要はない）
- [x]  rails db:migrateを実行し、Sequel Proでusersテーブルが存在することを確かめた
- [x]  Userモデルに各カラムのバリデーションを記述した（「emailとpasswordが空だと保存できない」というバリデーションは標準で用意されているため、記述する必要はない）
- [x]  rails g devise:viewsで関連するビューファイルを自動生成した
- [x]  rails g devise:views」で作成した registrations/new.html.erb と sessions/new.html.erb を、配布済みのビューファイルに置き換えた
- [x]  ヘッダーの「新規登録」ボタンに適切なパスを記載した（devise/registrations#newに該当するパスを、rails routesを用いて確認する）⇒ターミナルで確認だけ　rails routes 
- [x]  registrations/new.html.erbのフォームを、正しい形に書き直した
        ⇒rails routesで確認　url: user_session_path
- [x]  registrations/new.html.erbで「:hoge」と表記されている部分を、正しいものに修正した（PicTweetなどの新規登録ページも参考にする）
- [x]  application_controllerに、emailとpassword以外の値も保存できるように追記する（PicTweetなども参考にする
- [x]  サーバーを再起動し、正しく新規登録ができることを確かめた
- [x]  Sequel Proでusersテーブルに情報が保存されていることを確認した

## ヘッダーの表示

- [x]  ヘッダーの「ログイン」「新規登録」と、「ログアウト」「New Proto」を、ログインをしているときとしていないときで表示が変わるように条件分岐した
- [x]  ログインしているときは、トップページに「こんにちはユーザー名さん」が表示されるように条件分岐した
- [x]  「こんにちはユーザー名さん」の「ユーザー名」の部分に、今ログインしているユーザーのユーザー名が表示されるようにした
- [x]  ヘッダーの「ログイン」ボタンに適切なパスを記載した（devise/sessions#newに該当するパスを、rails routesを用いて確認する）
- [x]  ヘッダーの「ログアウト」ボタンに適切なパスを記載した（devise/sessions#destroyに該当するパスを、rails routesを用いて確認する。HTTPメソッドの指定に注意。）
- [x]  sessions/new.html.erbのフォームを、正しい形に書き直した
- [x]  sessions/new.html.erbで「:hoge」と表記されている部分を、正しいものに修正した（PicTweetなどのログインページも参考にする）
- [x]  サーバーを再起動し、ブラウザでログアウト/ログインができることを確認した
- [x]  情報が正しくない、情報が欠けている場合は、新規登録・ログインができないことを確認した

## 情報投稿機能を作成

- [x]  rails g model prototypeでPrototypeモデルを作成した
- [x]  マイグレーションファイルに、プロトタイプの名称、キャッチコピー、コンセプトのためのカラムを追加した
- [x]  マイグレーションファイルに、userを参照するための外部キーを記述した（references型を用いる）
- [x]  rails db:migrateを実行し、Sequel Proでprototypesテーブルが存在することを確かめた
- [x]  Prototypeモデルにアソシエーションを記述した
- [x]  Userモデルにアソシエーション記述した
- [x]  mini_magickとimage_processingのGemをGemfileに記述し、bundle installを実行した（参考カリキュラムのとおり、
- [x]  image_processingについてはバージョンの指定をする）
- [x]  rails active_storage:installでActive Storageを導入した
- [x]  rails db:migrateを実行した
- [x]  Prototypeモデルに、has_one_attachedを使用してimageカラムとのアソシエーションを記述した
- [x]  Prototypeモデルに、プロトタイプの名称、キャッチコピー、コンセプト、画像に関するバリデーションを記述した
- [x]  prototypesコントローラーにnewアクションとcreateアクションを設定した（まだアクション内の処理は書かない）
- [x]  resourcesを用いて、上記で設定したnewアクションとcreateアクションに対するルーティングをroutes.rbに記述した
- [x]  rails routesを実行して、ルーティングが正しく設定できていることを確かめた
- [x]  views/prototypesの中に、配布済みのnew.html.erbと_form.html.erbを配置した