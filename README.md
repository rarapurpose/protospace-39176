# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
 

# user table   
|Column|Type|Option|   
| :--: | :--: | :--: |   
| email | string | NOT NULL, ユニーク制約 |   
| encrypted_password | string | NOT NULL |   
| name | string | NOT NULL |   
| profile | text | NOT NULL |   
| occupation | text型 | NOT NULL |   
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

