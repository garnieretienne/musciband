class Api::V1::TrackAttachmentsController < ApplicationController
  respond_to :json

  def index
    @track_attachments = TrackAttachment.all
    respond_with @track_attachments
  end

  def create
    @track_attachment = TrackAttachment.create track_attachment_params
    respond_with :api, :v1, @track_attachment
  end

  def update
    @track_attachment = TrackAttachment.find params[:id]
    @track_attachment.update_attributes track_attachment_params
    respond_with @track_attachment
  end

  def show
    @track_attachment = TrackAttachment.find params[:id]
    respond_with @track_attachment
  end

  private

  def track_attachment_params 
    params.require(:track_attachment).permit(:publication_id, :track_id)
  end
end
