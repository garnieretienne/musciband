Editor.Publication = DS.Model.extend
  title: DS.attr('string'),
  article: DS.attr('string'),
  tracks: DS.hasMany('Editor.Track')