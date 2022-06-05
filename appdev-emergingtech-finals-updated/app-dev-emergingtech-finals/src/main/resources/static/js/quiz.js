//where the answers are placed based on the radio buttons
let sagot = [4,2,3,3,3,4,2,1,1,3];

let option = [];

//numbers of the correct answers
let counted_correct = 0;

function answer(num, select){
	//selected radio button. it gets the value
	option[num] = select.value;
	
	id="q" + num;
	
	label = document.getElementById(id).childNodes;
	label[3].style.backgroundColor = "white";
	label[5].style.backgroundColor = "white";
	label[7].style.backgroundColor = "white";
	label[9].style.backgroundColor = "white";
	
	select.parentNode.style.backgroundColor = "#cec0fc";
}

function correct(){
	counted_correct = 0
	
	//get the length of the array of answers
	for(i = 0; i < sagot.length; i++){
		//if the selected radio btns and answers from the array was true
		//then it will be counted as a score
		//and will be eventually added up
		if(sagot[i]==option[i]){
			counted_correct++;
		}
	}
	document.getElementById("results").innerHTML = counted_correct;
}
/**
 * 
 */