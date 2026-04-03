🔐 EncrypTRuby v1.0
O EncrypTRuby é um software de criptografia via linha de comando (CLI) focado em segurança básica e manipulação de fluxos de dados. Utiliza o algoritmo da Cifra de César com uma abordagem moderna para tratamento de caracteres alfanuméricos e preservação de integridade de texto.

🚀 Funcionalidades Principais
Encriptação Alfabética: Deslocamento de 3 posições mantendo a capitalização (Case Sensitive).

Encriptação Numérica (v1.0): Rotação decimal inteligente (0-9).

Preservação de Estrutura: Espaços, pontuação e símbolos especiais não são afetados, mantendo a legibilidade da frase.

Ciclo de Operação: Menu interativo em loop que permite processar várias senhas sem encerrar a aplicação.

🧠 Arquitetura do Código
O projeto foi construído focando nos seguintes pilares de programação em Ruby:

Iteração Avançada: Uso de .chars e .map para processamento individual de cada byte da string.

Lógica ASCII: Manipulação direta de ordinais (.ord) e caracteres (.chr) para garantir precisão matemática.

Segurança de Tipos: Filtragem via Expressões Regulares (Regex) para garantir que apenas dados válidos sejam transformados.

UX de Terminal: Interface limpa com feedback imediato ao utilizador.

📋 Como Funciona a Lógica
O motor do EncrypTRuby aplica uma regra de "Wrap-around" (Rotação):

Minúsculas (a-z): Se ultrapassar ASCII 122, retorna ao 97.

Maiúsculas (A-Z): Se ultrapassar ASCII 90, retorna ao 65.

Números (0-9): Se ultrapassar ASCII 57, retorna ao 48.

📦 Instalação e Uso
Requisito: Ter o Ruby 3.x+ instalado.

Clone o repositório:

Bash
git clone https://github.com/teu-usuario/EncrypTRuby.git
Execute o software:

Bash
ruby encriptador.rb
📝 Exemplo Prático
Opção 1 (Encriptar):
Input: Ruby 2026!
Output: Uxel 5359!

Autor: Felipe "Lira_Sincero" Pereira
Projeto desenvolvido como marco de aprendizado em Lógica de Programação e Ruby.
