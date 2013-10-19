class Api::V1::TracksController < ApplicationController
  respond_to :json

  def index
    @tracks = Track.all
    respond_with @tracks
  end
end
