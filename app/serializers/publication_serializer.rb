class PublicationSerializer < ActiveModel::Serializer
  attributes :id

  attributes :title, :article
end
