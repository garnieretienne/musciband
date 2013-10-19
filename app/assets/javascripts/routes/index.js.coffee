Editor.IndexRoute = Ember.Route.extend
  setupController: ->
  	
  	# Get the publication id from the rails route
  	# /admin/publications/:id/edit => :id
  	publication_id = location.pathname.split('/')[3]

  	this.controllerFor('publication').set 'model', Editor.Publication.find publication_id