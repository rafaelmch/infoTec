# TEx Tecnologia

## Teste prático | Desenvolvimento Delphi

Olá, receba nossas boas vindas!

Este repositório trata-se de um teste prático dos seus conhecimentos em Delphi e SQL e aborda vários conhecimentos esperados.

Trata-se de um aplicativo desktop simples desenvolvido em VCL e com os componentes mais triviais quanto possível. 

O banco de dados utilizado foi o **Firebird** sendo que a base de exemplo encontra-se no diretório `database`, bastando restaurar o backup.

---

### Recursos necessários

✅ Os fontes são compatíveis com o **Delphi Community Edition**, que pode ser baixado gratuitamente em:

 https://www.embarcadero.com/br/products/delphi/starter

✅ O banco de dados utilizado foi o **Firebird 2.5** sendo então compatível com o **Interbase** .

✅ Neste repositório temos:

📂`source` - Código fonte a ser trabalhado

📂`database` - Script SQL para criação das tabelas

---

### Objetivo

O seu objetivo é o de melhorar este projeto.  Ele está com vários bugs e precisa de algumas melhorias. Elencamos alguns desafios de acordo com o perfil em que você se candidatou.

A ideia é você resolver os desafios propostos no prazo acordado com o RH da TEx. Caso você faça algo a mais <u>aponte isso no seu e-mail de devolutiva</u>. 

Por favor **não** utilize componentes de terceiros pois entendemos não ser necessário. 

👉🏼 As tarefas que você precisa desenvolver estão listadas no arquivo **TAREFAS_*.md**.

---

### Restrições e cuidados

Para manter a objetividade do teste pedimos que:

❌ Não utiliza componentes de terceiros;

❌ Não modifique drasticamente a parte visual, a ideia é ser simples mesmo - porém funcional;

❌ Não publique este teste nas suas redes sociais para não invalidá-lo;

❗ *Não deixe hardcoding informações pessoais suas ou de terceiros como o acesso a email por exemplo.*

---

Considerando um banco de dados **Firebird 2.5**:

> Usuário: SYSDBA
> Senha: masterkey

O banco de dados tem a seguinte estrutura:

**CLIENTES**

Cadastro de clientes

- ID_CLIENTE - BIGINT - PRIMARY KEY
- NOME - VARCHAR(100)
- NASCIMENTO - DATE
- TELEFONE - CHAR(11)
- EMAIL - VARCHAR(150)
- END_TIPO_LOGRADOURO - VARCHAR(20)
- END_NOME_LOGRADOURO - VARCHAR(150)
- END_NUMERO - VARCHAR(10)
- END_COMPLEMENTO - VARCHAR(50)
- END_BAIRRO - VARCHAR(150)
- END_CIDADE - VARCHAR(150)
- END_UF - CHAR(2)
- END_CEP - CHAR(8)
- PESSOA - CHAR(1)
- INSCRICAO_FISCAL - CHAR(14)



**VENDAS**

Registro de Vendas

- ID_VENDA
- ID_CLIENTE
- ID_PRODUTO
- DATA_VENDA
- OBSERVACOES

---

### Devolutiva

Quando você terminar nos envie o seu projeto, compactado no formato zip e sem os binários. Esperamos encontrar no arquivo zip:

- Os fontes do projeto
- Scripts SQL para eventuais alterações do banco de dados
- Arquivo INI



Fique à vontade  para apontar qualquer coisa que você considere relevante sobre a sua entrega, destacando os seus pontos fortes bem como as suas dificuldades. 

Sugestões serão super bem vindas.

Desenvolva o projeto com calma e atenção.



Boa sorte!

