class RenameColumnSentenceToChapterId < ActiveRecord::Migration[5.0]
  def change
    rename_column :rounds, :sentence_id, :chapter_id
  end
end
