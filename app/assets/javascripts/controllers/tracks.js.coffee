Editor.TracksController = Ember.ArrayController.extend
  actions:
    attachToPublication: (track, publication) ->
      publication.attachTrack track
      @store.commit()

