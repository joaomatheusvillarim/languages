let salary = parseFloat(lines[1]);
let bonus = parseFloat(lines[2]) * 0.15;
let sum = salary + bonus;
console.log("TOTAL = R$ " + sum.toFixed(2));