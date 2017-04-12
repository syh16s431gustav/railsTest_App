$(document).ready(function() {
$('#field').keyup(function () {
  var max = 500;
  var len = $(this).val().length;
  if (len >= max) {
    $('#charNum').text('you have reached the limit');
  }
  else {
    var char = max - len;
    $('#charNum').text(char + ' characters left');
  }
	});
});

$("#fileImage").click(function () {
	debugger;
    $("#addImage").trigger('click');
});