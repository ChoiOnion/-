onmessage=obj=>{
    var d=obj.data;
    if(d.length<5){
        postMessage("아이디 비밀번호를 다시 확인해 주세요.");
    }else{
        postMessage("");
    }
}