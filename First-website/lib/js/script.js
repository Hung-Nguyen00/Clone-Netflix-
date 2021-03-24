function myFunction(id) {
    document.getElementById(id).classList.toggle("show");
}

var buttons = document.getElementsByClassName('FAQ-question');

var contents = document.getElementsByClassName('FAQ-answer');

for (var i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener("click", function() {

        var id = this.value;

        for (var i = 0; i < contents.length; i++) {
            if (!contents[i].id.match(this.value)) {
                contents[i].classList.remove("show");
            }
        }

        myFunction(id);
    });
}

window.addEventListener("click", function(e) {
    if (!e.target.matches('.FAQ-question')) {
        for (var i = 0; i < contents.length; i++) {
            contents[i].classList.remove("show");
        }
    }
});