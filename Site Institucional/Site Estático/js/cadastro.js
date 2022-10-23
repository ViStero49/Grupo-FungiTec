function validar_campo_cadastro(){
    var nome_usuario = input_nome.value
    var email_usuario = input_email.value
    var senha_usuario = input_senha.value
    var repeteir_senha = input_repetir_senha.value
    var cpf = Number(input_cpf.value)


    if (nome_usuario == "") {
        input_nome.style.borderColor = 'rgb(255, 0, 0)';
        alert('Preencha o nome o corretamente');

    }else if (email_usuario == "") {
        input_email.style.borderColor = 'rgb(255, 0, 0)';
        alert('Preencha o email corretamente');
        
    }else if (senha_usuario == "") {
        input_senha.style.borderColor = 'rgb(255, 0, 0)';
        alert('Por favor, cadastre uma senha!');

    }else if (senha_usuario.length < 8) {
        input_senha.style.borderColor = 'rgb(255, 0, 0)';
        alert('Sua senha precisa ter  pelo menos oito caracteres');

    }else if (repeteir_senha.length == 0) {
        Input_repetir_senha.style.borderColor = 'rgb(255, 0, 0)';
        alert('Insira sua senha novamente');

    }else if (senha_usuario != repeteir_senha) {
        input_repetir_senha.style.borderColor = 'rgb(255, 0, 0)';
        alert('Os campos não coincidem');

    }else if (cpf == "") {
        input_cpf.style.borderColor = 'rgb(255, 0, 0)';
        alert('Informe seu CPF para continuar');
    }
    else{
        input_cpf.style.borderColor = null;
        input_email.style.borderColor = null;
        input_nome.style.borderColor = null;
        input_senha.style.borderColor = null;
        input_repetir_senha.style.borderColor = null;
        alert('Usuário Cadastrado com sucesso!');
    }

}

