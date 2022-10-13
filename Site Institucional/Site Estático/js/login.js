function validar_campo(){
    var email_usuario = email.value;
    var senha_usuario = input_senha.value;


     if (email_usuario.value == null) {
        alert('Preencha este campo corretamente');
        email.style.borderColor = '#ff0000';
    }
    
    else if (senha_usuario.value == null) {
        alert('Por favor, cadastre uma senha!');

    }else if (senha_usuario.length < 8) {
        alert('Sua senha precisa ter  pelo menos oito caracteres');
        senha.style.borderColor = '#ff0000';

    }

};

