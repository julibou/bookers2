class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User" #follower_idカラムの値から、usersテーブルのレコードを参照できるようになる。


  belongs_to :followed, class_name: "User"#followed_idカラムの値から、usersテーブルのレコードを参照できるようになる。


end
