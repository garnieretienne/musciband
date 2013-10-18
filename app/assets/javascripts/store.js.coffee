# http://emberjs.com/guides/models/defining-a-store/

Editor.Store = DS.Store.extend
  revision: 11
  adapter: DS.RESTAdapter.create namespace: 'api/v1'

