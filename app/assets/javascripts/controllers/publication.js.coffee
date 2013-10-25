Editor.PublicationController = Ember.ObjectController.extend
  actions:
  	detachTrack: (publication, track) ->
      publication.detachTrack track
      @store.commit()
    savePublication: (publication) ->
      publication.save().then ->
        console.log "Success"
      , ->
        console.log "Failure"