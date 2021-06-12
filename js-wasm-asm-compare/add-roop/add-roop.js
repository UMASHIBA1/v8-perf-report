const add = function(a, b) {
    return a + b;
}

const iterationNum = 100000000;

let total = 0;
for (let i = 1; i <= iterationNum; i++) {
    total = add(total, i);
} 