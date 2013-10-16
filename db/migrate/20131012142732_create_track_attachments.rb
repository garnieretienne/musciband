class CreateTrackAttachments < ActiveRecord::Migration
  def change
    create_table :track_attachments do |t|
      t.references :publication, index: true
      t.references :track, index: true

      t.timestamps
    end
  end
end
