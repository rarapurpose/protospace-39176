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
- [x] viewsディレクトリの中の、prototypesコントローラーに対応するディレクトリにindex.html.erbを作成して、
      上記の記述をした
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
- [x]  Userモデルに各カラムのバリデーションを記述した（「emailとpasswordが空だと保存できない」というバリデーションは
       標準で用意されているため、記述する必要はない）
- [x]  rails g devise:viewsで関連するビューファイルを自動生成した
- [x]  rails g devise:views」で作成した registrations/new.html.erb と sessions/new.html.erb を、
       配布済みのビューファイルに置き換えた
- [x]  ヘッダーの「新規登録」ボタンに適切なパスを記載した（devise/registrations#newに該当するパスを、
       rails routesを用いて確認する）⇒ターミナルで確認だけ - rails routes 
- [x]  registrations/new.html.erbのフォームを、正しい形に書き直した
        ⇒rails routesで確認 - url: user_session_path
- [x]  registrations/new.html.erbで「:hoge」と表記されている部分を、
       正しいものに修正した（PicTweetなどの新規登録ページも参考にする）
- [x]  application_controllerに、emailとpassword以外の値も保存できるように追記する（PicTweetなども参考にする
- [x]  サーバーを再起動し、正しく新規登録ができることを確かめた
- [x]  Sequel Proでusersテーブルに情報が保存されていることを確認した

## ヘッダーの表示

- [x]  ヘッダーの「ログイン」「新規登録」と、「ログアウト」「New Proto」を、
       ログインをしているときとしていないときで表示が変わるように条件分岐した
- [x]  ログインしているときは、トップページに「こんにちはユーザー名さん」が表示されるように条件分岐した
- [x]  「こんにちはユーザー名さん」の「ユーザー名」の部分に、今ログインしているユーザーのユーザー名が表示されるようにした
- [x]  ヘッダーの「ログイン」ボタンに適切なパスを記載した（
       devise/sessions#newに該当するパスを、rails routesを用いて確認する）
- [x]  ヘッダーの「ログアウト」ボタンに適切なパスを記載した（devise/sessions#destroyに該当するパスを、
       rails routesを用いて確認する。HTTPメソッドの指定に注意。）
- [x]  sessions/new.html.erbのフォームを、正しい形に書き直した
- [x]  sessions/new.html.erbで「:hoge」と表記されている部分を、正しいものに修正した
      （PicTweetなどのログインページも参考にする）
- [x]  サーバーを再起動し、ブラウザでログアウト/ログインができることを確認した
- [x]  情報が正しくない、情報が欠けている場合は、新規登録・ログインができないことを確認した

# 情報投稿機能を作成

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

## 投稿機能を実装

- [x]  newアクションにインスタンス変数@prototypeを定義し、Prototypeモデルの新規オブジェクトを代入した
- [x]  new.html.erbから部分テンプレートである、_form.html.erbを呼び出す記述をした
- [x]  _form.html.erbのフォームを正しい形に書き直した
- [x]  _form.html.erbで「:hoge」と記載されている部分を、正しいものに修正した
- [x]  prototypesコントローラーのprivateメソッドにストロングパラメーターをセットし、
       特定の値のみを受け付けるようにした。且つ、user_idもmergeした
- [x]  createアクションにデータ保存のための記述をし、保存されたときはルートパスに戻るような記述をした
- [x]  createアクションに、データが保存されなかったときは新規投稿ページへ戻るようrenderを用いて記述した
- [x]  バリデーションによって保存ができず投稿ページへ戻ってきた場合でも、
       入力済みの項目（画像以外）は消えないことを確認した
- [x]  ヘッダーの「New Proto」ボタンから、新規投稿ページに遷移するようにパスを設定した（rails routesを用いて確認する）
- [x]  サーバーを再起動し、ブラウザで正しく動くか確認した
- [x]  Sequel Proを確認して、正しく保存ができているか確認した

## 投稿 トップページで表示
- [x]  各プロトタイプを表示するための部分テンプレート_prototype.html.erbを、views/prototypesの中に配置した
- [x]  indexアクションに、インスタンス変数@prototypesを定義し、すべてのプロトタイプの情報を代入した
- [x]  index.html.erbから_prototype.html.erbを呼び出し、プロトタイプ毎に、画像・プロトタイプ名・キャッチコピー
      ・投稿者の名前を表示できるようにした（renderメソッドにcollectionオプションを用いて実装する）
- [x]  正しくプロトタイプの表示ができるように、_prototype.html.erbを編集した
      （ただし仮置きのリンクroot_pathはそのままで良い）
- [x]  ブラウザで正しく表示されるか確認した

## 詳細ページを実装
- [x]  prototypesコントローラーにshowアクションを設定した（まだアクション内の処理は書かない）
- [x]  resourcesを用いて、上記で設定したshowアクションに対するルーティングをroutes.rbに記述した
- [x]  rails routesを実行して、ルーティングが正しく設定できていることを確かめた
- [x]  views/prototypesの中に、配布済みのshow.html.erbを配置した
- [x]  _prototype.html.erbの画像およびプロトタイプ名におけるリンク先が、詳細ページとなるように設定した
- [x]  showアクションにインスタンス変数@prototypeを定義した。且つ、Pathパラメータで送信されるID値で、
       Prototypeモデルの 特定のオブジェクトを取得するように記述し、それを@prototypeに代入した
- [x]  サーバーを再起動し、ブラウザで正しく動くか確認した
- [x]  show.html.erbにおいて、プロトタイプの「プロトタイプ名」「投稿者」「画像」「キャッチコピー」「コンセプト」が
       表示されるように記述を変更した
- [x]  ログインしているユーザーがそのプロトタイプの投稿者であるときは、「編集」「削除」のボタンが表示されるように
       条件分岐した（ボタンのリンク先は仮置きのroot_pathのままでよい）
- [x]  ブラウザで正しく動くか確認した

## 編集機能
- [x]  prototypesコントローラーにeditアクションとupdateアクションを設定した（まだアクション内の処理は書かない）
- [x]  resourcesを用いて、上記で設定したeditアクションとupdateアクションに対するルーティングをroutes.rbに記述した
- [x]  rails routesを実行して、ルーティングが正しく設定できていることを確かめた
- [x]  views/prototypesの中に、配布済みのedit.html.erbを配置した
- [x]  show.html.erbの「編集する」ボタンから、編集ページに遷移するようにパスを設定した
      （パスはrails routesを用いて確認する）
- [x]  editアクションにインスタンス変数@prototypeを定義した。且つ、Pathパラメータで送信されるID値で、
       Prototypeモデルの特定のオブジェクトを取得するように記述し、それを@prototypeに代入した
- [x]  edit.html.erbから部分テンプレートである、_form.html.erbを呼び出す記述をした
- [x]  updateアクションにデータを更新する記述をし、更新されたときはそのプロトタイプの詳細ページに戻るような記述をした
- [x]  updateアクションに、データが更新されなかったときは、編集ページに戻るようにrenderを用いて記述した
- [x]  バリデーションによって更新ができず編集ページへ戻ってきた場合でも、入力済みの項目（画像以外）は
       消えないことを確認した
- [x]  サーバーを再起動し、ブラウザで正しく動くか確認した
- [x]  Sequel Proを確認して、正しく更新ができているか確認した
  
## 削除機能
- [x]  prototypesコントローラーにdestroyアクションを設定した（まだアクション内の処理は書かない）
- [x]  resourcesを用いて、上記で設定したdestroyアクションに対するルーティングをroutes.rbに記述した
- [x]  rails routesを実行して、ルーティングが正しく設定できていることを確かめた
- [x]  show.html.erbの「削除する」ボタンから、先ほど作成したルーティングが呼び込まれるようにした
      （パスはrails routesを用いて確認する。HTTPメソッドに注意する）
- [x]  destroyアクションに、プロトタイプを削除し、トップページに戻るような記述をした
- [x]  サーバーを再起動し、ブラウザで正しく動くか確認した
  
## コメント投稿機能
- [x]  rails g model commentでCommentモデルを作成した
- [x]  マイグレーションファイルに、テキストのためのカラムを追加した
- [x]  マイグレーションファイルに、userおよびprototypeを参照するための外部キーを記述した（references型を用いる）
- [x]  rails db:migrateを実行し、Sequel Proでcommentsテーブルが存在することを確かめた
- [x]  Commentモデルに、userおよびprototypeに対するアソシエーションを設定した
- [x]  UserモデルおよびPrototypeモデルにも、commentに対するアソシエーションを設定した
      （必要に応じてdependent: :destroy オプションを使用した）
- [x]  Commentモデルに、テキストに関するバリデーションを記述した

- [x]  commentsコントローラーを作成した - rails g controller comments
- [x]  commentsコントローラーにcreateアクションを設定した（アクション内の処理は書かない）
- [x]  resourcesを用いて、上記で設定したcreateアクションに対するルーティングをroutes.rbに記述した
- [x]  rails routesを実行して、ルーティングが正しく設定できていることを確かめた