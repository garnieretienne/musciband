module MusicProviders

  # Default provider for testing and errors management
  class DefaultProvider

    # Output the HTML code to play a sound on soundcloud 
    # using soundcloud internal id
    def widget(internal_id)
      '<p>This provider is not supported</p>'
    end
  end
end