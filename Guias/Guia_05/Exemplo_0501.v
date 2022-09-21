// Exemplo_0501
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ----------------------------
// (a' . b')
// m a b a' b' s
// 0 0 0 1  1  1
// 1 0 1 1  0  0
// 2 1 0 0  1  0
// 3 1 1 0  0  0
// -------------------------

module Gate (output s, input a, input b);
    // saidas intermediarias
    wire w1, w2, w3;
    
    // NOT(s)
    nand NAND1(w1, a);
    nand NAND2(w2, b);
    
    // AND
    nand NAND3(w3, w1, w2);
    nand NAND4(s, w3);
endmodule // Gate

module Ex_0501;
    // define dados
    reg a, b;
    wire s;
    Gate ex1 (s, a, b);

    // teste
    initial
    begin : main
        $display("Exemplo_0501");
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
endmodule // Ex_0501