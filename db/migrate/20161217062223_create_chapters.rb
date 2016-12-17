class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :chapter_number
      t.integer :book_id

      t.timestamps
    end
  end
end
