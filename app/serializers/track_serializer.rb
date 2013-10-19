class TrackSerializer < ActiveModel::Serializer
  attributes :id

  attributes :title, :duration
end
