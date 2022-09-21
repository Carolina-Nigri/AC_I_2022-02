// Exemplo_0503
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ----------------------------
// (a + b')
// m a b b' s
// 0 0 0 1  1
// 1 0 1 0  0
// 2 1 0 1  1
// 3 1 1 0  1
// -------------------------

module Gate (output s, input a, input b);
    // saidas intermediarias
    wire w1;
    
    // NOT( NOT(a) AND (b) )
    nand NAND1(w1, a);
    nand NAND2(s, w1, b);
endmodule // Gate

module Ex_0503;
    // define dados
    reg a, b;
    wire s;
    Gate ex3 (s, a, b);

    // teste
    initial
    begin : main
        $display("Exemplo_0503");
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
endmodule // Ex_0503