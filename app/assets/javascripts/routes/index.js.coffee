Editor.IndexRoute = Ember.Route.extend
  setupController: ->
  	this.controllerFor('publication').set 'model', Editor.Publication.find 1