class RenameChapterColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :chapters, :book_id, :story_id
  end
end
