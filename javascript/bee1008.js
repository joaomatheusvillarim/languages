let number = parseInt(lines[0]);
let hours = parseInt(lines[1]);
let rate = parseFloat(lines[2]);
let salary = hours * rate;
console.log("NUMBER = " + number);
console.log("SALARY = U$ " + salary.toFixed(2));