// Select every button with type submit under a form with data-toggle validator
// $('form[data-toggle="validator"] input[type="submit"]').click(function(e) {
//     // Select the form that has this button
//     var form = $(this).closest('form');
//     // Verify if the form is validated
//     if (!form.data("bs.validator").validate().hasErrors()) {
//         e.preventDefault();
//         // Here go the trick! Fire a custom event to the form
//         form.trigger('submitted');
//     } else  {
//         console.log('Form still not valid');
//     }
// });
//
// // And in your separated script, do the following:
// $('#contactForm').on('submitted', function() {
//     // do anything here...
// })