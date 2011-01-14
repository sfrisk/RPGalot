// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $('.deleteCharacter').bind('ajax:success', function() {  
	    $(this).closest('.profile_list').fadeOut();  
	});
});
