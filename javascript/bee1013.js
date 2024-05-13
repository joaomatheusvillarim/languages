let a = parseInt(lines[0].split(" ")[0]);
let b = parseInt(lines[0].split(" ")[1]);
let c = parseInt(lines[0].split(" ")[2]);
function getMaior(a, b) {
    let maior = a;
    if(b > a) {
        maior = b;
    }
    return maior;
}
let maiorAB = getMaior(a, b);
let maiorABC = getMaior(maiorAB, c);
console.log(maiorABC + " eh o maior");