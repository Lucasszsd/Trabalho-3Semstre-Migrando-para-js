
let tentativaDeLogin = 3;


function logar() {
    let login = document.getElementById("login").value;
    let senha = document.getElementById("senha").value;
    let cargo = document.getElementsByName("cargo")[0].value;
    verificaLogin(cargo,senha,login);
}

function verificaLogin(cargo, senha, login){
    if (cargo === "administrador" && senha === "admin" && login === "admin") {
        window.open("./main.html", "_blank");
    }else{
        alert("Login ou senha incorretos " + (tentativaDeLogin-1) + " Tentativas restantes");
        tentativaDeLogin--;
        if(tentativaDeLogin === 0){
            alert("Conta bloqueada");
        }
    }

    console.log(tentativaDeLogin);
}
