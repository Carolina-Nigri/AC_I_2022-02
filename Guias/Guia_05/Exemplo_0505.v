// Exemplo_0505
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ----------------------------
// (a xnor b)
// m a b s
// 0 0 0 1
// 1 0 1 0
// 2 1 0 0
// 3 1 1 1
// -------------------------

module Gate (output s, input a, input b);
    // saidas intermediarias
    wire w1, w2, w3, w4;
    
    nand NAND1(w1, a, b);
    nand NAND2(w2, w1, a);
    nand NAND3(w3, w1, b);

    // XOR
    nand NAND4(w4, w2, w3);
    // XNOR
    nand NAND5(s, w4);
endmodule // Gate

module Ex_0505;
    // define dados
    reg a, b;
    wire s;
    Gate ex5 (s, a, b);

    // teste
    initial
    begin : main
        $display("Exemplo_0505");
        $display("");
        $display("a b s");
        
        // monitora variaveis e projeta testes
        $monitor("%b %b %b", a, b, s);
        // valores iniciais
           a = 1'b0; b = 1'b0; 
        // altera durante intervalo de 1s
        #1 a = 1'b0; b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 a = 1'b1; b = 1'b1;
    end // main
endmodule // Ex_0505