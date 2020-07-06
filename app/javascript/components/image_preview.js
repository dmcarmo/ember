// Image preview
$(function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#league-photo-upload").change(function(){
    $('#img_prev').removeClass('form-hidden-image');
    readURL(this);
  });
});