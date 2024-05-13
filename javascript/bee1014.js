let distance = parseInt(lines[0]);
let fuel = parseFloat(lines[1]);
let consumption = distance / fuel;
console.log(consumption.toFixed(3) + " km/l");