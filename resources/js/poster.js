const file = document.getElementsByName("poster");
const preview = document.getElementById("poster");
file[0].addEventListener("change", function () {
    if (file[0].files[0]) {
        const reader = new FileReader();
        reader.onloadend = function () {
            preview.src = reader.result;
        };
        reader.readAsDataURL(file[0].files[0]);
    }
});
