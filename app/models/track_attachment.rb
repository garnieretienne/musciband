class TrackAttachment < ActiveRecord::Base
  belongs_to :publication
  belongs_to :track
end
