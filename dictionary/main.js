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
