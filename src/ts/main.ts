function fibonacci(count:number): string {

	let first: number     = 0;
	let second: number    = 1;
	let sum: number       = 0;
	let fibSeqStr: string = "";
	
	fibSeqStr = first.toString() + " " + second.toString() + " ";
	
	for (var index = 0; index < count; index++) {
		sum = first + second;
		first = second;
		second = sum;
		fibSeqStr += sum.toString() + " ";
	}
	
	return fibSeqStr;
}

let a: string = fibonacci(9)