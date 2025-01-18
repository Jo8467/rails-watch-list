class RenameContentToCommentInReviews < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :content, :comment
  end
end
