console.log("Hello from the JavaScript console!");

$.ajax({
    type: 'GET',
    url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
    success(data) {
        console.log('This da weather: ')
        console.log(data);
    },
    error() {
        console.log('ERROR! ERROR! ABORT! ABORT!')
    },
});

console.log('Yo, where dat AJAX tho?!')