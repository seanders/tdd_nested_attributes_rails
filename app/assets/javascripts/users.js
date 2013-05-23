$(document).ready(function(){
  $('#new_involvement').on('click', function(e) {
  e.preventDefault();
    $('#submit_button').before($('#involvement_template').clone().attr("id",""));
    $('#submit_button').before($('#responsibility_template').clone().attr("id",""));
  });

  $('#new_user').on('click', '#new_responsibility', function(e) {
    e.preventDefault();
    $(this).parent().after($('#responsibility_template').clone().attr("id",""));
  });
});
