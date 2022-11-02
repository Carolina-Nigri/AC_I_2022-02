// Carolina Morais Nigri - 761400

module SoP ( output s, input a, input b, input c, input d );
    assign s = ( (~a & ~b & ~c) | (~a & ~c & d) | (a & ~c & ~d) | 
                    (a & ~b & ~c) | (b & c & ~d) );
endmodule // SoP

module PoS ( output S, input A, input B, input C, input D );
    assign S = ( (~C | ~D) & (A | B | ~C) & (~A | ~B | ~D) & 
                    (~A | B | ~C) & (A | ~B | C | D) );
endmodule // PoS

module test;
    // declara dados 
    reg a, b, c, d;
    wire s;
    SoP test (s, a, b, c, d);
    // PoS test (s, a, b, c, d);

    // teste
    initial
    begin : main
        $display("a b c d s");
        
        // monitora variaveis e projeta testes
        $monitor("%b %b %b %b %b", a, b, c, d, s);
        // valores iniciais
           a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
        // altera durante intervalo de 1s
        #1                               d = 1'b1;
        #1                     c = 1'b1; d = 1'b0;
        #1                               d = 1'b1;
        #1           b = 1'b1; c = 1'b0; d = 1'b0;
        #1                               d = 1'b1;
        #1                     c = 1'b1; d = 1'b0;
        #1                               d = 1'b1;
        #1 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
        #1                               d = 1'b1;
        #1                     c = 1'b1; d = 1'b0;
        #1                               d = 1'b1;
        #1           b = 1'b1; c = 1'b0; d = 1'b0;
        #1                               d = 1'b1;
        #1                     c = 1'b1; d = 1'b0;
        #1                               d = 1'b1;
    end // main
endmodule // test