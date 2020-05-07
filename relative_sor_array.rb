# Given two arrays arr1 and arr2, the elements of arr2 are distinct, and all elements in arr2 are also in arr1.

# Sort the elements of arr1 such that the relative ordering of items in arr1 are the same as in arr2.  Elements that don't appear in arr2 should be placed at the end of arr1 in ascending order.

 

# Example 1:

# Input: arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
# Output: [2,2,2,1,4,3,3,9,6,7,19]

# iterate through arr2 
# for every arr2[i], we find all those elements in arr1 output arr

# iterate through arr2 
# create the hash 
# { 2: 0
#   1: 0
#   4: 0
# }

# walk through arr1 and increment the counts within the hash
# everything not in the hash we can add to `others` (to be sorted later)

# walk back through arr2 
# would look to see how many elements there are in our hash and add thos eelement to the output arr.



# lastly, add others array (sorted) to the end of the results arr

const arr1 = [3, 2, 6, 2, 9, 2]
const arr2 = [2, 3, 9]

const getRelativeSort = (arr1, arr2) => {
    const hash = {}; // {2: 3, 3: 1, 9: 1}
    const results = [];  // [2, 2, 2, 3, 9]
    const others = []; // [6]
    for (let i =0; i < arr2.length; i++) {
        hash[arr2[i]] = 0;
    }
    
    for (let i = 0; i < arr1.length; i++) {
        if (hash[arr1[i]] === undefined) {
            others.push(arr1[i]);
        } else {
            hash[arr1[i]]++;
        }
    }
    
    for (let i = 0; i < arr2.length; i++) {
        if (hash[arr2[i]] !== 0) {
            countElems = hash[arr2[i]];
            while(countElems > 0) {
                results.push(arr2[i]);
                countElems--;
            }
        }
    }
    
    others.sort((a, b) => a - b);
    return results.concat(others);
}

console.log(getRelativeSort(arr1, arr2))


#####sulotion 2 ###########

var relativeSortArray = function(arr1, arr2) {
    let obj = {};
    for(let i = 0; i < arr2.length; i++){
        const el = arr2[i];
        obj[el] = i;
    }
    const getValue = (el) => {
        if(obj[el] !== undefined) {
            return obj[el];
        }
        return arr2.length+el;
    }
    arr1.sort((el1, el2) => {
        return getValue(el1) - getValue(el2);
    });
    return arr1;
};


