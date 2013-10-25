class TrackAttachmentSerializer < ActiveModel::Serializer
  attributes :id

  attributes :publication_id, :track_id
end
