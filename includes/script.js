function validateForm(event){
    event.preventDefault();
    let x = document.forms["myForm"]["vardas"].value;
    let y = document.forms["myForm"]["email"].value;
    if (x == "" || y == "") {
        alert("Būtina užpildyti visus laukus");
        return false;
    }
    else {
        let successMessage = document.createElement("div");
        let form_box = document.querySelector(".form-box"); 
        successMessage.innerHTML = `<h3>Užsiregistruota sėkmingai su ${y} elektorniniu paštu</h3>`;
        successMessage.setAttribute("class", "card-title mt-3");
        setTimeout(
            function(){
                successMessage.parentNode.removeChild(successMessage);
            }
        ,6000);
        form_box.appendChild(successMessage);
        return false;
    }
}