class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :duration
      t.text :description
      t.string :source
      t.integer :internal_id

      t.timestamps
    end
  end
end
