*** Settings ***
Library  RequestsLibrary
Library   SeleniumLibrary
Library    String

*** Variables ***
${URL}                   https://automacao.qacoders-academy.com.br/login
${mail}                  //input[contains(@type,'text')]
${senhasite}             //input[contains(@type,'password')]
${enterButton}           //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${LOGIN}                 sysadmin@qacoders.com
${SENHA}                 1234@Test
${cadastroElement}       //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]   
${usuarioElement}        //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novocadastroButton}    //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${usuariofullName}       //input[contains(@name,'fullName')]
${usuariomail}           //input[contains(@name,'mail')]
${usuarioaccessProfile}  //input[contains(@name,'accessProfile')]  
${usuariocpf}            //input[contains(@name,'cpf')]
${usuariopassword}       //input[contains(@name,'password')]     
${usuarioconfirmPassword}   //input[contains(@name,'confirmPassword')]
${usuariosalvarButton}      //button[@type='submit'][contains(.,'SALVAR NOVO')] 
${diretoriaElement}         //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${diretoriacadastroButton}  //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${diretorianome}            //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${diretoriasalvarButton}    //button[@type='submit'][contains(.,'SALVAR NOVO')]





*** Keywords ***

Abrir o navegador
  Open Browser  browser=headlesschrome
  Maximize Browser Window   

Fechar o navegador
  Close Browser

Passo 1 - Acessar a página de login do Academy
  Go to  url=${URL}

Passo 2 - Digitar o email
  Sleep    2s
  Wait Until Element Is Visible    locator=${mail}
  Input Text    locator=${mail}    text=${LOGIN}
  Sleep    3s

Passo 3 - Digitar a senha
  Wait Until Element Is Visible        locator=${senhasite}
  Input Text    locator=${senhasite}   text=${SENHA}
  Sleep    3s

Passo 4 - Clicar no botão Entrar
  Wait Until Element Is Visible        locator=${enterButton}
  Click Button                         locator=${enterButton}
  Sleep    3s


Passo 5 - Acessar cadastros
  Wait Until Element Is Visible      locator=${cadastroElement}
  Click Element                      locator=${cadastroElement}  
  Sleep    3s
  Capture Page Screenshot


Não funcional Acesso de usuário
  Passo 1 - Acessar a página de login do Academy
  
  Wait Until Element Is Visible    locator=${mail}
  Input Text    locator=${mail}    text=

  Wait Until Element Is Visible        locator=${senhasite}
  Input Text    locator=${senhasite}   text=${SENHA}

  Passo 4 - Clicar no botão Entrar
  Capture Page Screenshot
  Sleep    3s


Passo 6 - Acessar Usuários
  Passo 1 - Acessar a página de login do Academy
  Passo 2 - Digitar o email
  Passo 3 - Digitar a senha
  Passo 4 - Clicar no botão Entrar
  Passo 5 - Acessar cadastros
  Wait Until Element Is Visible      locator=${usuarioElement} 
  Click Element                      locator=${usuarioElement}  
  Sleep    3s

Passo 7 - Cadastrar novo usuário
  # Clicar no botão novo cadastro
  Wait Until Element Is Visible        locator=${novocadastroButton}  
  Click Button                         locator=${novocadastroButton}  
  # Funções para gerar massa de teste
  ${palavra_randomica}    Generate Random String    length=8     chars=[LETTERS]
  ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}   
  ${numero_ramdomico}     Generate Random String    length=11    chars=[NUMBERS] 

  # Nome Completo
  Wait Until Element Is Visible                   locator=${usuariofullName}  
  Input Text    locator=${usuariofullName}        text=Nome${palavra_randomica} Blacklis${palavra_randomica}
  # Email
  Wait Until Element Is Visible                   locator=${usuariomail}
  Input Text    locator=${usuariomail}            text=email${palavra_randomica}@qacoders.com.br
  # Perfil de acesso
  Wait Until Element Is Visible                   locator=${usuarioaccessProfile}
  Input Text    locator=${usuarioaccessProfile}   text=ADMIN
  # CPF
  Wait Until Element Is Visible                   locator=${usuariocpf}   
  Input Text    locator=${usuariocpf}             text=${numero_ramdomico}
  # Senha
  Wait Until Element Is Visible                   locator=${usuariopassword}  
  Input Text    locator=${usuariopassword}        text=1234@Test
  # Confirmação de senha
  Wait Until Element Is Visible                    locator=${usuarioconfirmPassword} 
  Input Text    locator=${usuarioconfirmPassword}  text=1234@Test
  Sleep    3s
  Capture Page Screenshot
  # Salvando cadastro
  Wait Until Element Is Visible        locator=${usuariosalvarButton}
  Click Button                         locator=${usuariosalvarButton}
  Sleep    3s


Passo 8 - Acessar Diretorias
  Passo 1 - Acessar a página de login do Academy
  Passo 2 - Digitar o email
  Passo 3 - Digitar a senha
  Passo 4 - Clicar no botão Entrar
  Passo 5 - Acessar cadastros
  Wait Until Element Is Visible      locator=${diretoriaElement} 
  Click Element                      locator=${diretoriaElement} 
  Sleep    3s 

Passo 9 - Cadastrar nova Diretoria
  # Clicar no botão novo cadastro
  Wait Until Element Is Visible        locator=${diretoriacadastroButton}
  Click Button                         locator=${diretoriacadastroButton}

  ${palavra_randomica}    Generate Random String    length=8     chars=[LETTERS]
  ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}   
  # Diretoria
  Wait Until Element Is Visible                   locator=${diretorianome}  
  Input Text    locator=${diretorianome}       text=Diretoria${palavra_randomica} & Blacklis
  # Clicar no botão salvar
  Sleep    3s 
  Capture Page Screenshot
  Wait Until Element Is Visible        locator=${diretoriasalvarButton} 
  Click Button                         locator=${diretoriasalvarButton} 
  Sleep    6s