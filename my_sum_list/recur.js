let acc = 0
function sumArray([num, ...rest]) {
	if (rest.length === 0) {
		return num;
  }
  acc = num + sumArray(rest)
	return num + sumArray(rest);	
}

console.log(sumArray([1,2,3,4]))