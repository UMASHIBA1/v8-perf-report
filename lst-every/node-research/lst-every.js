const calledFunc = (lst) => {
    const checkIsNumber = (i) => {
        return typeof i === "number";
    }
    lst.every(checkIsNumber);
};

const funcCall = () => {
    const numLst = [...Array(5000000)].map((_, i) => i);
    const lst = [];
    for (let i = 0; i < 100; i++) {
        calledFunc(numLst);
    }
    console.log(lst);
}

funcCall();
