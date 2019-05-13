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

const cart = {};
const output = document.createElement('div');
document.body.appendChild(output);

items.forEach( function(i) {
    let div = document.createElement('div');

    div.innerHTML = `<h3>${i.item}</h3>$${i.cost}`;
    div.style.border = '1px solid #ddd';
    div.style.display = 'inline-block';
    div.style.width = '100px';
    div.style.cursor = 'pointer';
    //
    // Here is the cart simulation. Example of nested dictionary
    // {item: {name, price, qty, subtotal(func)}}
    // Also example of listener(probably not that relevant will be using
    // jquery or react anyways...
    //
    div.addEventListener('click', function () {
        let namer = i.item.toLowerCase();

        if( cart[namer] ){
            cart[namer].qty++;
        }
        else {
            cart[namer] = {
                name: i.item,
                price: i.cost,
                qty: 1,
                subtotal: function () {
                    return this.price * this.qty
                }
            }
        }
        relist();
    });

    function relist() {
        output.innerHTML = "";
        console.log(cart);
        let total = 0;
        // For loop example through {key{value}key{value}key{value}}
        // when there is a nested hash in hash
        for(let pro in cart) {
            total += cart[pro].subtotal();
            output.innerHTML += `${cart[pro].name} $${cart[pro].price}`;
            output.innerHTML += `x${cart[pro].qty} $${cart[pro].subtotal()}<br>`;
        }
        output.innerHTML += `<strong>Total: $${total}</strong>`;
    }

    document.body.appendChild(div)
});
