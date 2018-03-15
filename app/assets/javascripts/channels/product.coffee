App.product = App.cable.subscriptions.create "ProductChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert('we got dataddaaaabbbbbb')
    alert('next alert')
    alert($(".alert.alert-info").length)
    console.log($(".alert.alert-info").length)
    $(".alert.alert-info").show()
