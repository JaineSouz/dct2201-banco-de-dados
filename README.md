# DCT2201 - Banco de Dados

Repositório destinado às atividades da disciplina DCT2201 - Banco de Dados, do curso de Sistemas de Informação da UFRN.

## Tarefa 03 - Docker Compose, MariaDB e Administração de SGBD

Os arquivos da primeira instância estão organizados na pasta `tarefa03`:

- `docker-compose.yml`: configuração dos serviços MariaDB e CloudBeaver.
- `.env.example`: modelo das variáveis de ambiente necessárias.
- `povoamento.sql`: comandos SQL para inserção dos dados.
- `setup.sql`: script de criação e configuração do banco de dados, tabelas, usuários e permissões.

A pasta `tarefa03-instancia2` contém os arquivos de configuração de uma segunda instância independente do Docker Compose, utilizada para executar dois ambientes simultaneamente.

O arquivo `.env` de cada instância contém configurações privadas e não deve ser compartilhado ou versionado. Os arquivos `.env.example` apresentam apenas valores genéricos para orientar a configuração.