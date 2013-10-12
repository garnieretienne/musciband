class Admin::PublicationsController < ApplicationController
  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new publication_params
    if @publication.save
      redirect_to publications_url, notice: "'#{@publication.title}' has been published"
    else
      render :edit, alert: "Your publication is not valid"
    end
  end

  def edit
    @publication = Publication.find params[:id]
  end

  def update
    @publication = Publication.find params[:id]

    if @publication.update_attributes publication_params
      redirect_to publications_url, notice: "'#{@publication.title}' has been edited"
    else
      render :edit, alert: "Your publication is not valid"
    end
  end

  private

  def publication_params 
    params.require(:publication).permit(:title, :content)
  end
end
