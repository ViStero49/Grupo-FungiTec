function validar_campo_login(){
    var email_usuario = input_email.value;
    var senha_usuario = input_senha.value;


     if (email_usuario.value == '') {
        alert('Preencha este campo corretamente');
        input_email.style.borderColor = '#ff0000';
    }
    
    else if (senha_usuario.value == '') {
        alert('Por favor, cadastre uma senha!');

    }else if (senha_usuario.length < 8) {
        alert('Sua senha precisa ter  pelo menos oito caracteres');
        input_senha.style.borderColor = '#ff0000';

    }
    else{
        input_email.style.borderColor = 'rgb (0, 255, 0)';
        input_senha.style.borderColor = 'rgb (0, 255, 0)';

        alert(`Bom dia! Bom te ver novamente!`)
    }

};

