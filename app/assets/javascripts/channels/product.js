App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    
  },

  disconnected: function() {
    
  },

  received: function(data) {
    $(".alert.alert-info").show();
    $(".new-product-review").prepend(data.comment);
    $("#average-rating").attr('data-score', data.average_rating);
    refreshRating();
    
  },
  listen_to_comments: function(){
    alert("we are in listen to comments function");
    return this.perform('listen',{
      product_id: $("[data-product-id]").data("product-id")
    });
  }
});

$(document).on('turbolinks:load', function() {
  alert("we are in turbolinks:load event");
  App.product.listen_to_comments();
});