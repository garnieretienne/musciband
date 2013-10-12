require "redcarpet"

class Publication < ActiveRecord::Base

  def to_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)
    markdown.render(content).html_safe
  end
end
