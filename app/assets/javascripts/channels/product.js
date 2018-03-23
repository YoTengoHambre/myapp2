App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    
  },

  disconnected: function() {
    
  },

received: function(data) {
  // Called when there's incoming data on the websocket for this channel
  $(".alert.alert-info").show();
  alert('new comment - ' + data.comment);
  $('.product-reviews').prepend(data.comment);
  $("#average-rating").attr('data-score', data.average_rating);
  refreshRating();
},
  listen_to_comments: function(){
    return this.perform('listen',{
      product_id: $("[data-product-id]").data("product-id")
    });
  }
});

$(document).on('turbolinks:load', function() {
  App.product.listen_to_comments();
});