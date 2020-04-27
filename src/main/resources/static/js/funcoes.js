function TestaCPF(strCPF) {
    var Soma;
    var Resto;
    Soma = 0;
    strCPF = strCPF.replace(".", "");
    strCPF = strCPF.replace("-", "");
    strCPF = strCPF.replace(".", "");

    //strCPF = RetiraCaracteresInvalidos(strCPF,11);
    if (strCPF == "00000000000")
        return false;
    for (i = 1; i <= 9; i++)
        Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (11 - i);
    Resto = (Soma * 10) % 11;
    if ((Resto == 10) || (Resto == 11))
        Resto = 0;
    if (Resto != parseInt(strCPF.substring(9, 10)))
    {                
        alert("CPF INVALIDO");
        document.getElementById('cpf').value="";
      
        return false;
        
    }
    Soma = 0;
    for (i = 1; i <= 10; i++)
        Soma = Soma + parseInt(strCPF.substring(i - 1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;
    if ((Resto == 10) || (Resto == 11))
        Resto = 0;
    if (Resto != parseInt(strCPF.substring(10, 11))){
        alert("CPF INVALIDO");
        document.getElementById('cpf').value="";
     
        return false;
    }
    return true;
}

function validaEmail(field)
{
    var filter = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;

    if(!filter.test(field)){
    
        alert('Por favor, digite o email corretamente');
    
      //  document.getElementById("email").focus();
    
        return false;
    }
    
}

function validaSenha(){

    var senhaDigitada = document.getElementById('senha1').value;
    var senhaConfirmacao = document.getElementById('senha2').value;

    if (senhaDigitada  != senhaConfirmacao){
        alert("Senhas não confere\ Digite novamente");
        document.getElementById('senha1').value="";
        document.getElementById('senha2').value="";
        document.getElementById('senha1').focus();
        return false;
    }
}