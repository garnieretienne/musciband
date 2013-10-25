Editor.TrackAttachment = DS.Model.extend
  track: DS.belongsTo('Editor.Track')
  publication: DS.belongsTo('Editor.Publication')