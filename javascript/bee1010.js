let qntdA = parseInt(lines[0].split(" ")[1]);
let valorA = parseFloat(lines[0].split(" ")[2]);
let qntdB = parseInt(lines[1].split(" ")[1]);
let valorB = parseFloat(lines[1].split(" ")[2]);
let valor = qntdA * valorA + qntdB * valorB;
console.log("VALOR A PAGAR: R$ " + valor.toFixed(2));