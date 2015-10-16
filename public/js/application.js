$(document).ready(function() {
  $("#new-cat").on("click", function(event) {
      event.preventDefault();
      $.get("/cats/new")
        .done(function(response) {
        $("#cat-space").html($(response).children()[0])
      });
  });
$(document).keydown(function(e) {
    if (e.keyCode == 37 || 39) {
        $.get("/cats/new")
        .done(function(response) {
        $("#cat-space").html(response)
      });
    }
});
});
