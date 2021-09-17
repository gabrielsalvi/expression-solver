# Trabalho Final de Sistemas Digitais

**Descrição do Projeto:** Projetar um sistema para realizar a operação polinomial A*X<sup>2</sup> + B*X + C baseada na comunicação entre um bloco de controle (um FSMD) e um bloco operativo. O circuito possui 1 entrada de dados de 8 bits (entrada_x), 3 entradas de dados de 16 bits (A, B e C) e uma saída de dados de 16 bits (resultado). Os sinais internos são todos de 16 bits.

**Composição do Bloco Operativo (BO):**

-   2 registradores de 16 bits (Reg_S e Reg_H);
-   1 registrador de 8 bits (Reg_X);
-   3 multiplexador 4x1 de 16 bits (M0, M1 e M2);
-   1 unidade aritmética que realiza operações de soma e multiplicação (ULA).

**Comportamento do BO:**

-   O registrador Reg_X possui entrada de dados de 8 bits e saída de 16 bits (concatenar zeros a esquerda). Uma entrada de clock, uma entrada de carga (load) e uma entrada de reset;
-   Os outros dois registradores (Reg_H e Reg_L) possuem entradas e saídas de 16 bits;
-   Os valores manipulados são representados em complemento de 2;
-   Os multiplexadores 4x1 (M0, M1 e M2) possuem entradas e saídas de dados de 16 bits e entrada de controle de 2 bits;
-   A unidade aritmética (ULA) possui entradas e saídas de dados de 16 bits e uma entrada de controle (H) para escolher a operação de 1 bit.

**Para executar o projeto no terminal do Linux, digite os seguintes comandos:**

		cd src/tests
		iverilog testbench.v
		./a.out
		gtkwave dump.vcd