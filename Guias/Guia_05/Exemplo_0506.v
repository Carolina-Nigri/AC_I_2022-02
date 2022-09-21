// Exemplo_0506
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ----------------------------
// (a xor b)
// m a b s
// 0 0 0 0
// 1 0 1 1
// 2 1 0 1
// 3 1 1 0
// -------------------------

module Gate (output s, input a, input b);
    // saidas intermediarias
    wire w1, w2, w3, w4;
    
    nor NOR1(w1, a, b);
    nor NOR2(w2, w1, a);
    nor NOR3(w3, w1, b);

    // XNOR
    nor NOR4(w4, w2, w3);
    // XOR
    nor NOR5(s, w4);
endmodule // Gate

module Ex_0506;
    // define dados
    reg a, b;
    wire s;
    Gate ex6 (s, a, b);

    // teste
    initial
    begin : main
        $display("Exemplo_0506");
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
endmodule // Ex_0506