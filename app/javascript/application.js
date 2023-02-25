import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// import { clickOnFileUploader, saveChangedFile } from './components/save_file_inputs';
// import { stickyNavbar } from './components/sticky_navbar';
// import { initMapbox } from './plugins/init_mapbox';

// document.addEventListener('turbolinks:load', () => {
//   initMapbox();
// })


// clickOnFileUploader();
// saveChangedFile();

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

// document.addEventListener('turbolinks:load', () => {
//   // Call your functions here, e.g:
//   // initSelect2();
//   stickyNavbar();
//   // Banner preview
//   $(function() {
//     function readURL(input) {
//       if (input.files && input.files[0]) {
//         var reader = new FileReader();
//         reader.onload = function (e) {
//           $('#img_prev').attr('src', e.target.result);
//         }
//         reader.readAsDataURL(input.files[0]);
//       }
//     }
//     $("#photo-upload").change(function(){
//       $('#img_prev').removeClass('form-hidden-image');
//       readURL(this);
//     });
//     const uploadLabel = document.querySelector("label.upload-media");
//     if (uploadLabel) {
//       uploadLabel.click();
//     }
//   });
// });
