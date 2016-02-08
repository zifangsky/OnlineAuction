function login(){
	if( document.forms[0].uname.value ==="" ){
		return false;
	}else if(document.forms[0].upass.value === ""){
		return false;
	} else {
		return true;
	}
}

