require "soundcloud"

module MusicProviders

  class SoundcloudPlatform
    
    # Connect to the Soundcloud API
    def initialize
    end

    # Output the HTML code to play a sound on soundcloud 
    # using soundcloud internal id
    def widget(internal_id)
      html = '<iframe width="100%" height="100%" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=http%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F'
      html += internal_id.to_s
      html += '"></iframe>'
    end
  end
end