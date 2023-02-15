document.getElementById("inscription").addEventListener("submit", function (e) {

    var erreur;

    var inputs = this.getElementsByTagName("input");

    for (var i = 0; i < inputs.length; i++) {
        console.log(inputs[i]);
        if (!inputs[i].value) {
            erreur = "Veuillez renseigner tous les champs";
        }
    }

    if (erreur) {
        e.preventDefault();
        document.getElementById("erreur").innerHTML = erreur;
        return false;
    } else {
        alert('Formulaire envoyé !');
    }


    var nom = document.getElementById("nom");
    var prenom = document.getElementById("prenom");
    var email = document.getElementById("email");

    if (!email.value) {
        erreur = "Veuillez renseigner un email";
    }
    if (!prenom.value) {
        erreur = "Veuillez renseigner un prenom";
    }

    if (!nom.value) {
        erreur = "Veuillez renseigner un nom";
    }



});

function myFunction() {
    var x = document.getElementById("navbar");
    if (x.className === "navbar-brand") {
        x.className += " responsive";
    } else {
        x.className = "navbar-brand"
    }
}