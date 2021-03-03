class AddTagToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :tag, null: false, foreign_key: true
  end
end
