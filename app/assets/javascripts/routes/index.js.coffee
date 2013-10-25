Editor.IndexRoute = Ember.Route.extend
  setupController: ->
    
    # Get the publication id from the rails route
    # /admin/publications/:id/edit => :id
    publication_id = location.pathname.split('/')[3]
    publication = Editor.Publication.find(publication_id)

    this.controllerFor('publication').set 'model', publication
    this.controllerFor('tracks').set 'model', Editor.Track.find()
    this.controllerFor('tracks').set 'currentPublication', publication