#  Projeto de Banco de Dados 

Este repositório contém o script SQL para a criação de um banco de dados relacional que simula a estrutura interna básica do GitHub.

Este é um projeto acadêmico desenvolvido para colocar em prática conceitos básicos sobre banco de dados.
##  v01

O script `ProjetoBD1_v01.sql` implementa as seguintes tabelas e regras de negócio:

* **`usuario`**: Armazena os dados de perfil e credenciais dos usuários da plataforma.
* **`repositorio`**: Guarda as informações dos projetos, como nome, arquivo *leia-me*, contagem de estrelas e visualizações.
* **`contribuidor`**: Tabela associativa que liga usuários aos repositórios onde eles colaboram, guardando estatísticas de código (adições e exclusões).
* **`problema` (Issue)**: Representa as tarefas, requisições de melhoria ou bugs registrados dentro de um repositório.
* **`responsavel_problema` (Assignees)**: Tabela de junção que permite que múltiplos usuários sejam designados para resolver uma mesma issue.
* **`etiqueta` (Label)**: Define os rótulos de categorização (ex: bug, feature), com suas descrições e cores.
* **`etiqueta_problema`**: Tabela associativa (N:M) que permite aplicar várias etiquetas a um mesmo problema sem duplicar dados.
* **`comentario_do_problema`**: Relacionamento 1:N que registra toda a linha do tempo de discussões dos usuários dentro de uma issue.

* ## v02
* **`configuracoes`**: Armazena as preferências operacionais de um repositório, gerenciando níveis de visibilidade (público ou privado), a ramificação padrão (branch) e permissões de recursos internos.
* **`seguranca_e_qualidade`**: Monitora o estado de proteção do repositório, controlando varreduras de vulnerabilidades, análises de dependências ativas e registro de alertas de segurança.
* **`commit_`**: Registra o histórico individual de envios de código feitos pelos usuários, utilizando chaves identificadoras baseadas em hashes criptográficos (SHA-1) e computando a volumetria de modificações de linhas.
* **`pull_request`**: Modela as propostas de mesclagem de código entre ramificações, controlando o ciclo de vida da revisão por meio de estados específicos (aberto, fechado ou integrado).
* **`commit_pull_request`**: Tabela associativa (N:M) que permite agrupar múltiplos commits a uma mesma requisição de alteração (Pull Request), garantindo o rastreamento completo das revisões de código.
