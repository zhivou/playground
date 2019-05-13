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



//
// Roll Dice Game
//
function DiceGame() {

  this.roll = function() {
    return this.result = Math.floor(Math.random()*6)+1;
  };

  this.winner = function(player, computer) {
    if ( player > computer ) {
      return "Player Wins"
    }
    else if ( player < computer ) {
      return "Computer Wins"
    }
    else {
      return "Tie"
    }
  }
}

$("#rollButton").click(function() {
  let player = game.roll();
  let computer = game.roll();
  $("#result")
      .html(
          `Player: ${player} ` + `Computer: ${computer}` + "<br>" +
          game.winner(player, computer));
});

const game = new DiceGame();