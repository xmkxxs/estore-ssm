

function checkForm(form){
	if(!checkEmpty(form)){
		return false;
	}
	return checkPassword();	
 }
function checkEmpty(form){
    for(var i = 0;i < form.length;i++){
 	   if(form.elements[i].value == ""){
 		   alert("表单不能为空");
 		   return false;
 	   }    	 
    }
    return true;
  }
function checkPassword(){
	 var pw1 = document.getElementById("password1").value;
     var pw2 = document.getElementById("password2").value;
     if(pw1 != pw2){
  	   alert("两次密码不一致");
  	   return false;
     }
     return true;
}

