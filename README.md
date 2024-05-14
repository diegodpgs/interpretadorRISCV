# interpretadorRISCV
Interpretador RISCV

Este código foi produzido por Diego Pedro Goncalves da Silva (https://github.com/diegodpgs) 
para auxiliar na disciplina de arquitetura de computadores no IFAM campus Parintins.

13 de Maio de 2024

Este interpretador foi contruído para tornar simples o seu entendendimento. Por esta razão, não foi utilizado regex ou uma gramática própria para a interpretação da linguagem. Os seguintes comandos são utilizados


Armazenamento
sw x2, 4(x11)
Atribuição
lui x9, 24
Impressão de memória
db #MEM
Impressão do arquivo de registros
db #REG
Impressão de um registrador em específico
db #RG x1
Impressão de qualquer coisa
db isso sera impresso

O interpretador não utiliza o comando JUMP, em vez disso utiliza um marcadador criado pelo usuário


