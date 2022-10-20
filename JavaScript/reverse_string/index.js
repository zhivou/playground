const reverse = (s) => {
    let newString = "";
    
    for (let i = (s.length - 1); i >= 0; i--){
        newString += s[i];
    }
    console.log(newString);
}

const isPolindrome = (s) => {
    let end = s.length - 1;

    if (s.length == 1) {
        return true
    }

    for (let start = 0; start < end; start++, end--){
        console.log(`Checking if ${s[start]} == ${s[end]}`);
        if (s[start] !== s[end]){
            console.log("Falied")
            return false
        }
        console.log("Pass")
    }
    return true
}

const sortMe = (arr) => {
    let done = false

    while (!done) {
        done = true;

        for (let i=0; i < arr.length - 1; i++){
            if (arr[i] > arr[i+1]){
                let current = arr[i];
                let next = arr[i+1];
                
                arr[i+1] = current;
                arr[i] = next;
                done = false;
            }
        }
    }

    return(arr)
}

const sumTwo = (arr, target) => {
    for (let i=0; i <= arr.length - 1; i++) {
        for (let j=0; j <= arr.length - 1; j++){
            console.log(arr[i]);
            console.log(arr[j]);
            if (((arr[i] + arr[j]) == target) && (j != i) ) {
                console.log(`${arr[i]}+${arr[j]}=${target}`);
                return;
            }
        }
    }
}
 
const smartSumTwo = (arr, target) => {
    const mapped = {};
    
    for (let i=0; i <= arr.length - 1; i++) {
        mapped[arr[i]] = i;
    }

    for (let j=0; j <= arr.length - 1; j++) {
        let missing = target - arr[j]
        if (mapped[missing]) {
            console.log(`${missing} + ${arr[j]} = ${target}`);
            return;
        }
    }
}

smartSumTwo([3,3], 6)