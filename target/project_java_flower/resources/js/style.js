function password(){
    var x= document.getElementById("password");

    if(x.type==="password")
    {
        x.type="text";
        document.getElementById('show').style.color="rgba(243,82,99,0.4)";


    }
    else{
        x.type="password";
        document.getElementById('show').style.color="rgb(243, 82, 99)";
    }
}

function p_password(){

    var y= document.getElementById("p_password");
    if(y.type==="password")
    {
        y.type="text";
        document.getElementById('p_show').style.color="rgba(243,82,99,0.4)";


    }
    else{
        y.type="password";
        document.getElementById('p_show').style.color="rgb(243, 82, 99)";
    }
}



