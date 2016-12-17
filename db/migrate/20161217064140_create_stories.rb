class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.integer :reading_level
      t.string :title

      t.timestamps
    end
  end
end
