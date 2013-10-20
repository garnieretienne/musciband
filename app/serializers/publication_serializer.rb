class PublicationSerializer < ActiveModel::Serializer
  attributes :id
  embed :ids, include: true

  attributes :title, :article
  has_many :tracks
end
