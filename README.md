# linux-script-iac

Script de criação de estrutura de usuários, diretórios e permissões. Este script foi desenvolvido durante o bootcamp _Linux Experience_ da [DIO](https://www.dio.me/).

Este script satisfaz os seguintes requisitos:

- Todos os usuários tem permissão total dentro do diretório `/public`;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.

Após a execução do script será criado os seguintes itens:

**Diretórios**

- /public
- /adm
- /ven
- /sec

**Grupos**

- GRP_ADM
- GRP_VEN
- GRP_SEC

**Usuários**

- adm1
- adm2
- ven1
- ven2
- sec1
- sec2
