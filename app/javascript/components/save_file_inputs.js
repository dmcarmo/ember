function clickOnFileUploader() {
  // find the link para will open the phone camera
  const editLink = document.querySelector(".fa-camera");

  // if the link exists
  if (editLink) {
    // add event listener to when the link is clicked
    editLink.addEventListener("click", function(){
        // click on the hidden choose file button
        const test = document.querySelector('#new_picture');
        document.querySelector('#new_picture').click();
    })
  }
}
function saveChangedFile(){
  // find the file inputs that will be submited automatically when changed
  const filesinputs = document.querySelectorAll('#new_picture [picture="photo"]');
  // iterate over these files
  filesinputs.forEach(function(input){
    // add event listener to when their values changes (the user picks/takes photo)
    input.addEventListener("change", function(){
      // submit the form to save the file in the server
     console.log("add a picture");
      const form = document.querySelector('#new_picture').submit();
    });
  });
}
export { clickOnFileUploader, saveChangedFile };
