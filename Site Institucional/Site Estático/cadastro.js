function validar_campo_cadastro(){
    var nome_usuario = nome.value;
    var email_usuario = email.value;
    var senha_usuario = input_senha.value;
    var repetir_senha = input_repeteir_senha.value;
    var cpf = input_cpf.value;


    if (nome_usuario.length < 3) {
        alert('Preencha este campo corretamente');
        nome.style.borderColor = '#ff0000';

    }
    
    else if (email_usuario.indexOf('@') == -1 || email_usuario.indexOf('.') == -1) {
        alert('Preencha este campo corretamente');
        email.style.borderColor = '#ff0000';
        
    }
    
    else if (senha_usuario.length < 8 ) {
        alert('Por favor, cadastre uma senha válida!');
        input_senha.style.borderColor = '#ff0000';

    }
    
    else if (senha_usuario.length < 8) {
        alert('Sua senha precisa ter  pelo menos oito caracteres');
        input_senha.style.borderColor = '#ff0000';

    }
    
    else if (repetir_senha.length == 0) {
        alert('Insira sua senha novamente');
        repetir_senha.style.borderColor = '#ff0000';

    }
    else if (input_senha.length != repetir_senha.value) {
        alert('Os campos não coincidem');
        input_repeteir_senha.style.borderColor = '#ff0000';

    }else if (cpf.length  < 11) {
        alert('Campo inválido');
        input_cpf.style.borderColor = '#ff0000';

    }

}

