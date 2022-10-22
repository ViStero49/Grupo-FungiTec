function validar_campo_cadastro(){
    var nome_usuario = nome.value;
    var email_usuario = email.value;
    var senha_usuario = input_senha.value;
    var repetir_senha = input_repeteir_senha.value;
    var cpf = input_cpf.value;


    if (nome_usuario == null) {
        alert('Preencha este campo corretamente');
        nome.style.borderColor = '#ff0000';

    }else if (email_usuario == null) {
        alert('Preencha este campo corretamente');
        email.style.borderColor = '#ff0000';
        
    }else if (senha_usuario == null) {
        alert('Por favor, cadastre uma senha!');

    }else if (senha_usuario.length < 8) {
        alert('Sua senha precisa ter  pelo menos oito caracteres');
        senha.style.borderColor = '#ff0000';

    }else if (repeteir_senha == null) {
        alert('Insira sua senha novamente');
        Input_repetir_senha.style.borderColor = '#ff0000';

    }else if (senha_usuario != repeteir_senha) {
        alert('Os campos não coincidem');
        input_repetir_senha.style.borderColor = '#ff0000';

    }else if (cpf == null) {
        alert('Campo inválido');
        input_cpf.style.borderColor = '#ff0000';

   
    }

}

