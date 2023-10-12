let y = document.getElementById("area");
function area(e){
	let t = e.target.value;
	if(t.length >2000){
		y.innerHTML="<font size=2px, color=red>*Limit exeeds</font>";
	}
	else{
		y.innerHTML="";
	}	
}