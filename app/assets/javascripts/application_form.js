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
    $('#footer').removeClass('full-bottom');
  } else {
    var $toastContent = $("<span>Vous ne pouvez pas valider des champs vides</span>");
    Materialize.toast($toastContent, 5000);
  };
});

$('#submit-btn input').click(function(event){
  if ($('#user_application_warrant_false').is(':checked') == false && $('#user_application_warrant_true').is(':checked') == false) {
    var $toastContent = $("<span>Merci de remplir tous les champs pour pouvoir faire votre demande.</span>");
    Materialize.toast($toastContent, 5000);
    event.preventDefault();
  } else if ($('#user_application_visit_needed_false').is(':checked') == false && $('#user_application_visit_needed_true').is(':checked') == false) {
    var $toastContent = $("<span>Merci de remplir tous les champs pour pouvoir faire votre demande.</span>");
    Materialize.toast($toastContent, 5000);
    event.preventDefault();
  }
})
