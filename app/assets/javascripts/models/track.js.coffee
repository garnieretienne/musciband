Editor.Track = DS.Model.extend
  title: DS.attr('string'),
  duration: DS.attr('number'),
  publications: DS.hasMany('Editor.Publication')