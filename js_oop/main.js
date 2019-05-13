//
// Class example:
//
function Car(
    color,
    brand,
    make,
    year,
    price = 0,){

  this.color = color;
  this.brand = brand;
  this.make = make;
  this.price = price;
  this.year = year;

  //
  // Class method drive
  //
  this.drive = function() {
    console.log(`I am driving my ${this.year} ${this.brand}`)
  };

  this.park = function() {
    console.log(`Parking my ${this.make}...`)
  };

  this.sell = function() {
    console.log(`I want to sell my car for ${this.price - this.price * 0.25}`)
  }
}


const myCar = new Car(color = 'white', brand = 'vw', make = 'Jetta', year = 2017, price = 28000);