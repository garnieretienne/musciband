class TrackSerializer < ActiveModel::Serializer
  attributes :id

  attributes :title, :duration

  has_many :track_attachments
end
