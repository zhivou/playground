var map = new Map([[2018,2],[2017,3]]);

$("#lol").click(runit);

function runit () {
    console.log(map);
}

// Object Example
const myObject = {
    name: 'Dmitrii',
    last_name: 'Skrylev',
    id: 42342,
    full_name: function () {
        return `${this.name}, ${this.last_name}`
    }
};

//Another Object representation example:

const myCar = {};

myCar.color = 'White';
myCar.make = 'Wolks Vagon';
myCar.model = 'Jetta GLI';
myCar.year = '2017';
myCar.price = 25000;

myCar.drive = function () {
    console.log(`I am driving my ${this.model} vrooom vroom pop bung`)
};

myCar.park = function () {
    console.log(`I am parking my ${this.color.toLowerCase()} ${this.make}...`)
};

////
// Simulating Cart Items. forEach example like each in ruby:
//
const items = [

    { item: 'banana', cost: 1, id: 21 },
    { item: 'apple', cost: 2, id: 13 },
    { item: 'cheese', cost: 4, id: 71 },
    { item: 'tomato', cost: 4, id: 49 },
    { item: 'lemon', cost: 1, id: 31 }

];

items.forEach( function(i) {
    let div = document.createElement('div');
    div.innerHTML = `<h3>${i.item}</h3>$${i.cost}`;
    div.style.border = '1px solid #ddd';
    div.style.display = 'inline-block';
    div.style.width = '100px';
    document.body.appendChild(div)
});