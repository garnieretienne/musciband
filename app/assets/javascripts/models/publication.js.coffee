Editor.Publication = DS.Model.extend
  title: DS.attr('string')
  article: DS.attr('string')
  trackAttachments: DS.hasMany('Editor.TrackAttachment')

  # Use a computed property to manage the hasMany through relationship
  # Something like:
  #   tracks: DS.hasMany('Editor.Track', through: trackAttachment)
  tracks: ( ->
    return @get('trackAttachments').getEach('track')
  ).property 'trackAttachments.@each'

  # Attach a track to the current publication
  attachTrack: (track) ->
    attachments = @get('trackAttachments')
    if !attachments.findProperty 'track', track
      attachment = Editor.TrackAttachment.createRecord(track: track, publication: @)
      attachments.addObject attachment

  # Detach a track from the current publication
  detachTrack: (track) ->
    attachments = @get('trackAttachments')
    attachment = attachments.findProperty 'track', track
    attachments.removeObject attachment if attachment

