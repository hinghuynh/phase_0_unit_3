/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.

// function average(array){
//     total = 0;
//     for (var i=0 ; i < array.length; i++)
//     {
//       total += array[i];
//     }
//       return total/array.length;
// };

// var gradebook = {
//     Joseph: { testScores: scores[0] },

//     Susan: { testScores: scores[1] },

//     William: { testScores: scores[2] },

//     Elizabeth: { testScores: scores[3] },

//    getAverage: function getaverage(name){
//         for (var i=0; i < students.length; i++) 
//             {
//             if (name === students[i]) {
//                 return average(scores[i]);
//             }        
//         }
//     },

//     addScore: function addscore(name, score){
//         for (var i=0; i < students.length; i++)
//             {
//             if (name === students[i]) {
//                 scores[i].push(score);
//             }        
//         }
//     }

// };

// __________________________________________
// Refactored Solution

function average(array){
    sum = 0;
    for (var i in array)
    {
      sum += array[i];
    }
      return sum/array.length;
}

var gradebook = {};

for(var i in students){
    gradebook[students[i]] = { testScores: scores[i] }
}

gradebook.getAverage = function getaverage(name){
        return average(scores[students.indexOf(name)]);
}

gradebook.addScore = function addscore(name, score){
    scores[students.indexOf(name)].push(score);
}

// __________________________________________
// Reflect

// This assigment took a while, because it was my first assignment in Javascript
// in about 5 weeks. I was stuck trying to figure out why I couldn't get equality
// on two arrays with the same exact elements. I then tried [1,2,3] === [1,2,3]
// in node console and realize that javascript doesn't have equality built in
// for arrays. It really angered me, because I realize the only way I could get
// arrays to equal each other was to assign the object to another variable.  
// The next thing that was annoying was how I didn't have access to many array
// functions when there was a multi level array, so first I tried loops, then 
// tried calling functions on the original arrays, but realize now that this too
// was unnecessary.

// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)
