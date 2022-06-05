function required(){
	let email = document.getElementById("email");
	let fullname = document.getElementById("fullname");
	let password = document.getElementById("password");
	let confirmPW = document.getElementById("confirmPW");
	
	if(email.value=="" || fullname.value=="" || password.value=="" || confirmPW.value==""){
		alert("Blank fields are not allowed");
		return false;
	}
	else if(password.value != confirmPW.value){
		document.getElementById('msg').innerHTML = "Passwords do not match";
		document.getElementById('password').value = "";
		document.getElementById('confirmPW').value = "";
		return false;
	}
	else{
		document.getElementById('msg').innerHTML = "Data Saved!";
		return true;
	}
	
}
/**
 * 
 */