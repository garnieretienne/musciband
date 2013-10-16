class TracksController < ApplicationController
  def index
  	@tracks = Track.all.order("created_at DESC")
  end
end
