# http://emberjs.com/guides/models/defining-a-store/

Editor.Adapter = DS.RESTAdapter.extend namespace: 'api/v1'

Editor.Store = DS.Store.extend
  revision: 11
  adapter: Editor.Adapter

