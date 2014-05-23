// U3.W8-9: Challenge you're converting


// I worked on this challenge [by myself, with: Lienha Carleton].

// 2. Pseudocode



// 3. Initial Solution
// var cardCheck = function cardCheck(cardNumber) {
//     if (cardNumber.toString().split('').length != 16) {
//         return "ERROR: Invalid number of digits"
//     }
//     else {
//         var numberArray = cardNumber.toString().split('').map(Number);

//         for (var i = 0; i < numberArray.length; i++) {
//             if (i % 2 === 0) {
//                 numberArray[i] = numberArray[i] * 2;
//             }
//         }

//         numberArray2 = numberArray.join('').toString().split('').map(Number);

//         return eval(numberArray2.join('+')) % 10 === 0;
//     }
// }

// 4. Refactored Solution
var cardCheck = function cardCheck(cardNumber) {
    if (cardNumber.toString().split('').length != 16) {
        return "ERROR: Invalid number of digits"
    }
    else {
        var numberArray = cardNumber.toString().split('').map(Number);

        for (var i = 0; i < numberArray.length; i += 2) {
                numberArray[i] *= 2;
        }
        return eval(numberArray.join('').toString().split('').map(Number).join('+')) % 10 === 0;
    }
}

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (cardCheck(4408041234567893) === true),
  "Card # 4408041234567893 should be valid",
  "1. "
)

assert(
  (cardCheck(4408041234567892) === false),
  "Card # 4408041234567892 should be invalid",
  "2. "
)

assert(
  (cardCheck(440804123456789) === "ERROR: Invalid number of digits"),
  "Card # 440804123456789 should give error",
  "3. "
)

// 5. Reflection 
//
// This was fun, it was pretty quick to get this working. I actually surprised myself
// because, I thought it was going to be difficult, because how limited i felt with
// array functions in the first exercise, but I pretty much had access to every 
// method that I used in Ruby, only just less efficient and more syntax heavy.  Still
// this a lot better than what I was expecting. The only thing is that I don't really
// understand how to write classes or methods like I do in Ruby. so I just made it 
// one function.  The most tedious part was just finding the avaliable functions
// in Javascript, after that it was just pretty much trial and error with the node
// console.