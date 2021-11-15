- [VISUAL] Fazer com que o software abra já maximizado;

- [VISUAL] Criar uma tela splash;

- [VISUAL] Criar um rodapé com alguns dados fictícios do usuário e, principalmente, um relógio com a data e hora  atualizando constantemente;

- [VISUAL] Colocar um logotipo no cabeçalho;

- [VISUAL] Acertar a ordem de tabulação do Cadastro de Cliente;

- [VISUAL] No cadastro de cliente definir máscaras adequadas para os campos:

  - NASCIMENTO
  - TELEFONE
  - INSCRIÇÃO FISCAL (Perceba que é o mesmo campo para CNPJ e CPF)

- [DATABASE] - Na tela de Cadastro de Cliente faltam criar as funcionalidades de EXCLUIR e EDITAR bem como informar, no rodapé, o número do registro atual versus a quantidade de registros (exemplo: `Cliente 1 de 60`)

- [RECURSOS] Criar arquivo de configuração, INI, para as informações de acesso ao banco de dados;

- [REGEX] Ainda na tela de Cadastro de Cliente acertar a RegEx para aceitar outros endereços de email que terminem com `.com` e `.com.br` - hoje só aceita `.com.br` (Isto é uma regra de negócio explícita)

- [RECURSOS] Mover os componentes não visuais para um `DataModule`;

- [SQL]  Na tela de Cadastro de Clientes tornar o ID auto incremental, ou seja, fazer com que o usuário não precise digitar o ID

- [PASCAL] Na tela de Cadastro de Clientes criar a funcionalidade de exportação dos registros para CSV;

- [PASCAL] Na tela de Listagem de Arquivos é listado os arquivos XML presentes em um determinado diretório. É necessário melhorar a rotina para listar os arquivos presentes em eventuais sub-diretórios;

- [PASCAL] - Há vazamentos de memória que precisam ser eliminados;

- [PASCAL] - Na tela de Cadastro de Clientes o `OnValidate` do campo `INSCRICAO_FISCAL` está fazendo uso de duas classes para validar o CNPJ e o CPF. Pede-se implementar estas rotinas na unit `InscricaoFiscal.pas`. 

- [HTTP] - Na tela de Cadastro de Cliente criar a funcionalidade de preencher o endereço à partir do CEP informado;

  - Dê preferência para o formato XML usando o serviço web da ViaCEP - https://viacep.com.br/

- [EMAIL] - Ainda na tela de Cadastro de Cliente criar a funcionalidade de enviar email;

  - A ideia é abrir uma tela para escrever um texto arbitrário e enviar ao email do cliente em questão. 

- [DATABASE] Nova tela de Cadastro de Usuários:

  - CRUD completo com as mesmas funcionalidades da tela de Cadastro de Cliente;
  - Criar tabela `USUARIOS` com os campos:
    - `ID_USUARIO`
    - `NOME`
    - `LOGIN`
    - `SENHA`
    - `ATIVO`

- [DATABASE] Adequar o Cadastro de Cliente para que registre o ID do usuário que efetuou a operação de INCUSÃO dos registros ;

- [DELPHI] Criar uma tela de login para acessar o aplicativo;

- [PASCAL] A solução de validação de CNPJ e CPF se baseou em uma classe abstrata e duas classes concretas. Pede-se para mudar a abordagem para utilizar `Interface` no lugar da classe abstrata.

- [PASCAL] Fazer com que só seja possível executar uma instância do executável;

  