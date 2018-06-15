$(document).on("turbolinks:load", function(){
  $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched'
  });

  $('#procedure_patient_id').on('change', function(){
    var selected  = $('#procedure_patient_id').find(':selected');
    var address   = selected.data('address');
    var city      = selected.data('city');
    var state     = selected.data('state');
    var email     = selected.data('email');
    var phone     = selected.data('phone');

    $('#patient_address').val(address);
    $('#patient_city').val(city);
    $('#patient_state').val(state);
    $('#patient_email').val(email);
    $('#patient_phone').val(phone);
  })

})
