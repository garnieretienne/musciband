require "redcarpet"

class Publication < ActiveRecord::Base
  has_many :track_attachments
  has_many :tracks, through: :track_attachments

  def to_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)
    markdown.render(article).html_safe
  end
end
