// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
    $('.modal').on('hidden.bs.modal', function() {
        alert(this);
        $('#errors').html('');
        $(this).find('form input[type="email"]').val('');
        $(this).find('form input[type="password"]').val('');
    });

    $('.modal').on('ajax:success', '#new_session', function(e, xhr, status, err) {
        $('#errors').html('');
    }).on('ajax:error', function(e, xhr, status, err) {
        var errors = $.parseJSON(xhr.responseText);
        alert(errors);
        $.each(errors, function(index, error) {
            $('#errors').html("<p class='well well-sm alert-danger'>* "+error+"</p>");
        });
    });
});

