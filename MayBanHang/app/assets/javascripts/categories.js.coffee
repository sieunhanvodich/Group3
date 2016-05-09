# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("<%= escape_javascript(render @user) %>").appendTo("#users");
$('#err_msg').html('<div class="alert alert-danger"><%= j @err_message %></div>');