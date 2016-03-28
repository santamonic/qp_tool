class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
	t.string :quality_practice
        t.string :toolname
        t.string :title
        t.string :support_language
        t.string :support_os
        t.string :buyneed
        t.string :support_javaversion
        t.string :urlname
        t.timestamps null: false
    end
  end
end
