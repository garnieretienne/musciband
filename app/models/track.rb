class Track < ActiveRecord::Base
  has_many :track_attachments
  has_many :publications, through: :track_attachments

  # Print the HTML code to play the track
  def widget
    html = "<div class='widget'>"
    html += provider.widget(internal_id)
    html += "</div>"
    return html.html_safe
  end

  def to_s
    title
  end

  private

  # Return the MusicProvider for this track
  # If not found, use the default provider
  def provider
    begin
      @provider ||= eval("MusicProviders::#{source}").new
    rescue
      @provider = MusicProviders::DefaultProvider.new
    end
  end
end
