class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :player_id
      t.integer :sentence_id

      t.timestamps
    end
  end
end
