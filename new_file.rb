/*
922. Sort Array By Parity II

Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.

Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.

You may return any answer array that satisfies this condition.

 

Example 1:

Input: [4,2,5,7]
Output: [4,5,2,7]
Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.


1. seperate the value of array (odd, even)
2. interate thru the array 
3. checking the i (index) if is odd or even 
4. if index is odd, we will push the odd number to the arr(output).
*/
const A = [4,2,5,7];
        
const sortByParity = (A) => {
    let odd = [];
    let even = [];
    let output =[];
    for(let i = 0; i< A.length; i++){
        if (A[i] %2 === 0) {         //if 4 is even? 
           even.push(A[i])    // even = [4, 2]
        } else {
            odd.push(A[i])    //even = [5, 7]
        }
    }
for (let i =0; i < A.length; i++){
    if (i %2 ===0) {
    output.push(even.pop())
}else {
    output.push(odd.pop())
}
}
 return output }
console.log(sortByParity(A) )
