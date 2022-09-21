// Exemplo_0504
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ----------------------------
// (a' . b)
// m a b a' s
// 0 0 0 1  0
// 1 0 1 1  1
// 2 1 0 0  0
// 3 1 1 0  0
// -------------------------

module Gate (output s, input a, input b);
    // saidas intermediarias
    wire w1;
 
    // NOT( NOT(b) OR (a) )
    nor NOR1(w1, b);
    nor NOR2(s, w1, a);
endmodule // Gate

module Ex_0504;
    // define dados
    reg a, b;
    wire s;
    Gate ex4 (s, a, b);

    // teste
    initial
    begin : main
        $display("Exemplo_0504");
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
endmodule // Ex_0504