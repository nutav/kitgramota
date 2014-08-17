(function() {
  $(function() {
    return $(document).foundation({
      accordion: {
        active_class: 'active',
        multi_expand: false,
        toggleable: true,
        callback: function(accordion) {
          return console.log(accordion);
        }
      }
    });
  });

}).call(this);
