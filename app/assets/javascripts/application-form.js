$(document).ready(function() {
  $('#warrant-form-input span').addClass('flex-half');
  $('#visit-form-input span').addClass('flex-half');
});
$('#show-step2-btn').click(function(){
  name = $('#user_application_applicant_name').val();
  email = $('#user_application_applicant_email').val();
  phone = $('#user_application_applicant_phone_number').val();
  if ((name != "") && (email != "") && (phone != "")) {
    $('#step2').slideDown();
    $('#submit-btn').slideDown();
    $('#show-step2-btn').css({"display": "none" });
  };
});
