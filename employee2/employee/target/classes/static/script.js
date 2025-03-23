document.addEventListener("DOMContentLoaded", function () {
    fetch('http://localhost:8080/api/message')
        .then(response => response.json())
        .then(data => {
            document.getElementById('output').innerText = data.message;
        })
        .catch(error => console.error('Error:', error));
});
