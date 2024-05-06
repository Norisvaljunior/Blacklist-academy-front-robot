*** Settings ***
Resource     ../resources/testes_recursos_academy.resource
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***
Cenário de teste : Acesso de usuário como Administrador
	Passo 1 - Acessar a página de login do Academy
	Passo 2 - Digitar o email
	Passo 3 - Digitar a senha
	Passo 4 - Clicar no botão Entrar
	Passo 5 - Acessar cadastros

Cenário de teste : Cadastrar novo usuário
    Passo 6 - Acessar Usuários
	Passo 7 - Cadastrar novo usuário

Cenário de teste : Cadastrar nova diretoria
	Passo 8 - Acessar Diretorias
	Passo 9 - Cadastrar nova Diretoria
	#Passo 10 - Fazer logout

#Cenário de teste : Não funcional Acesso de usuário
#    Não funcional Acesso de usuário

    
