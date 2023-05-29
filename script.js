
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


function cadastra(){
    window.open("./cadastro.html", "_blank");
}

function recebeSenha(){
    
    let senhaConfirma = document.getElementById("senha").value;
    let confirmacaoConfirma = document.getElementById("confirmacao").value;
    confereSenha(senhaConfirma, confirmacaoConfirma);
}


function confereSenha(senha,confirmacao){
    if (senha != confirmacao) {
        alert("Senhas não conferem");
    }
}

function reserva(){
    window.open("./reserva.html", "_blank");
}

function inspecao(){
    window.open("./inspecao.html", "_blank");
}

function devolucao(){
    window.open("./devolucao.html", "_blank");
}

function requisicoes(){
    window.open("./requisicoes.html", "_blank");
}

function relatorios(){
    window.open("./relatorios.html", "_blank");
}

function disponiveis(){
    window.open("./disponiveis.html", "_blank");
}

function manutencao(){
    window.open("./manutencao.html", "_blank");
}

function ajustes(){
    window.open("./ajustes.html", "_blank");
}



