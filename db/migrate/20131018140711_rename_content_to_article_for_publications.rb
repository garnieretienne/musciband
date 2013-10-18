class RenameContentToArticleForPublications < ActiveRecord::Migration
  def change
  	rename_column :publications, :content, :article
  end
end
