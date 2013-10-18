class Api::V1::PublicationsController < ApplicationController
  respond_to :json

  def update
    @publication = Publication.find params[:id]
    @publication.update_attributes publication_params
    respond_with @publication
  end

  def show
    @publication = Publication.find params[:id]
    respond_with @publication
  end

  private

  def publication_params 
    params.require(:publication).permit(:title, :article)
  end
end
