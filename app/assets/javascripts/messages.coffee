window.client = new Faye.Client('/faye')

client.addExtension {
  outgoing: (message, callback) ->
    message.ext = message.ext || {}
    message.ext.csrfToken = $('meta[name=csrf-token]').attr('content')
    callback(message)
}

jQuery ->
  client.subscribe '/messages', (payload) ->
    $('#messages').find('.media-list').prepend(payload.message) if payload.message