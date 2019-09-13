/*
window.setTimeout(function() {
  alert('HAMMERTIME');
}, 5000);

const hammertime = function(time) {
  setTimeout(() => alert(`${time} is hammertime!`), 5000);
};

hammertime('9 o\'clock');

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  reader.question('Would you like some tea?: ', (answer) => {
    console.log(`${answer}`);
    reader.question('Woukd you like some biscuits?: ', (answer2) => {
      console.log(`${answer2}`);
      
      const one = answer === 'yes' ? 'do' : 'don\'t';
      const two = answer2 === 'yes' ? 'do' : 'don\'t';
      console.log(`So you ${one} want tea and you ${two} want biscuits.`);
      reader.close();
    });
  });
};

teaAndBiscuits();

*/


function Cat () {
  this.name = 'Ryoki';  
  this.age = 5;  
}

function Dog () {
  this.name = 'Mia';
  this.age = 8;
}

Dog.prototype.chase = function(cat) {
  console.log(`My name is ${this.name} and I love chasing ${cat.name}! Roof!`);
};

const ryoki = new Cat ();
const mia = new Dog ();

mia.chase(ryoki);

mia.chase.call(ryoki, mia);

mia.chase.apply(ryoki, [ryoki]);