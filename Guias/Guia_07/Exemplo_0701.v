// -------------------------
// Exemplo_0701
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
    reg a, b, select;
    wire s1, s2, s;
    // saidas independentes
    and AND ( s1, a, b ); 
    nand NAND ( s2, a, b );
    // saida selecionavel
    mux MUX1 ( s, s1, s2, select );
// ------------------------- parte principal
    initial
    begin : main
        $display("Exemplo_0701");
        $display("Test LU's module");
        $display("a b sel s");

        a = 1'b0; b = 1'b0; select = 1'b0;
        // projetar testes do modulo
        #1 $monitor("%b %b %3b %b", a, b, select, s);
        #1 b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 b = 1'b1;
        #1 a = 1'b0; b = 1'b0; select = 1'b1;
        #1 b = 1'b1;
        #1 a = 1'b1; b = 1'b0;
        #1 b = 1'b1;
    end
endmodule // tests