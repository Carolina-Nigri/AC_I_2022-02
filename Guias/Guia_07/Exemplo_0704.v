// -------------------------
// Exemplo_0704 
// Nome: Carolina Morais Nigri
// Matricula: 761400
// -------------------------
module mux ( output s,
             input a,
             input b,
             input select );
    // definir dados locais
    wire not_select;
    wire sa;
    wire sb;
    // descrever por portas
    not NOT1 ( not_select, select );
    and AND1 ( sa, a, not_select );
    and AND2 ( sb, b, select );
    or OR1 ( s , sa, sb );
endmodule // mux
module tests;
// ------------------------- definir dados
    reg a, b, select1, select2;
    wire sA1, sA2, sA, sB1, sB2, sB, s;
    // saidas independentes
    xor XOR ( sA1, a, b ); 
    xnor XNOR ( sA2, a, b );
    or OR ( sB1, a, b ); 
    nor NOR ( sB2, a, b );
    // saidas selecionaveis
    mux MUX1 ( sA, sA1, sA2, select1 );
    mux MUX2 ( sB, sB1, sB2, select1 );
    mux MUX3 ( s, sA, sB, select2 );
// ------------------------- parte principal
    initial
    begin : main
        $display("Exemplo_0704");
        $display("Test LU's module");
        $display("a b sel1 sel2 s");

           a = 1'b0; b = 1'b0; select1 = 1'b0; select2 = 1'b0;
        // projetar testes do modulo
        #1 $monitor("%b %b %3b %3b %3b", a, b, select1, select2, s);
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;

        #1 a = 1'b0; b = 1'b0; select1 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;

        #1 a = 1'b0; b = 1'b0; select1 = 1'b0; select2 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;

        #1 a = 1'b0; b = 1'b0; select1 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
    end
endmodule // tests