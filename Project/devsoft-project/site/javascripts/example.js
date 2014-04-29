/*
 * Scripts for the example page.
 */

/*
 * Shows the next token in the welcome message.
 */
function showNextToken() {
  // If the current token is not the last one:
  // show current token and schedule the next one.
  if ($(this).next().length > 0) {
    $(this).next().fadeIn(200, showNextToken);
  }
}

// This anonymous function will be executed after the page is loaded.
$(function() {

  // Hide the welcome div until all tokens have been created.
  $('.welcome').hide();

  // Create tokens.
  $(['w', 'e' , 'l', 'c', 'o', 'm', 'e', ' :)']).each(function(idx, token) {
    $('.welcome').append("<span>" + token + "</span>");
  });

  // Hide all newly created tokens and show welcome div.
  $('.welcome span').hide();
  $('.welcome').show();

  // Start animation.
  $('.welcome span').eq(0).fadeIn(200, showNextToken);

});