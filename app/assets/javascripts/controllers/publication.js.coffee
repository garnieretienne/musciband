Editor.PublicationController = Ember.ObjectController.extend
  actions:
    savePublication: (publication) ->
      publication.save().then ->
        console.log "Success"
      , ->
        console.log "Failure"