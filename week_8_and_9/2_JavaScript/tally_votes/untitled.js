// var array = [["Cavs",0], ["Heat",2]]

// var LeBron = {
//     name: "LeBron James",
//     titles: {
//         "Cavs": 0,
//         "Heat": 2,
//         // How would you do this by looping through the array above?
//     }
//     }

var array = [["Cavs",0], ["Heat",2]]
var LeBron = { 
	titles: {}
}
for (team in array){
    LeBron["titles"][array[team][0]] = array[team][1]
    // array[team][0] = array[team][1]
}



console.log(LeBron)