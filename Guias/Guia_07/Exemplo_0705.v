// -------------------------
// Exemplo_0705
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
    reg a, b, select1, select2, select3;
    wire sA1, sA2, sA, 
         sB1, sB2, sB, 
         sC1, sC2, sC, 
         sD1, sD2, sD, 
         s01, s02, s;
    // saidas independentes
    and AND ( sA1, a, b ); 
    nand NAND ( sA2, a, b );
    or OR ( sB1, a, b ); 
    nor NOR ( sB2, a, b );
    xor XOR ( sC1, a, b ); 
    xnor XNOR ( sC2, a, b );
    not NOT1 ( sD1, a ); 
    not NOT2 ( sD2, b );
    // saidas selecionaveis
    mux MUX1 ( sA, sA1, sA2, select1 );
    mux MUX2 ( sB, sB1, sB2, select1 );
    mux MUX3 ( sC, sC1, sC2, select1 );
    mux MUX4 ( sD, sD1, sD2, select1 );
    mux MUX5 ( s01, sA, sB, select2 );
    mux MUX6 ( s02, sC, sD, select2 );
    mux MUX7 ( s, s01, s02, select3 );
// ------------------------- parte principal
    initial
    begin : main
        $display("Exemplo_0705");
        $display("Test LU's module");
        $display("a b sel1 sel2 sel3 s");

           a = 1'b0; b = 1'b0; select1 = 1'b0; select2 = 1'b0; select3 = 1'b0;
        // projetar testes do modulo
        #1 $monitor("%b %b %3b %3b %3b %3b", a, b, select1, select2, select3, s);
        // 000
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 001
        #1 a = 1'b0; b = 1'b0;                                 select3 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 010
        #1 a = 1'b0; b = 1'b0;                 select2 = 1'b1; select3 = 1'b0;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 011
        #1 a = 1'b0; b = 1'b0;                                 select3 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 100
        #1 a = 1'b0; b = 1'b0; select1 = 1'b1; select2 = 1'b0; select3 = 1'b0;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 101
        #1 a = 1'b0; b = 1'b0;                                 select3 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 110
        #1 a = 1'b0; b = 1'b0;                 select2 = 1'b1; select3 = 1'b0;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
        // 111
        #1 a = 1'b0; b = 1'b0;                                 select3 = 1'b1;
        #1           b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1           b = 1'b1;
    end
endmodule // tests