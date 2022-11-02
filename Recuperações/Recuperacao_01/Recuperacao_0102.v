// Carolina Morais Nigri - 761400

module f ( output s, input a, input b, input c );
    wire w1, w2;
    or OR__1 (s,a,w1);
    not NOT_1 (w2,c);
    and AND_1 (w1,w2,b);
endmodule // s = f (a,b,c)

module test;
    // declara dados 
    reg a, b, c;
    wire s;
    f test (s, a, b, c);

    // teste
    initial
    begin : main
        $display("a b c s");
        
        // monitora variaveis e projeta testes
        $monitor("%b %b %b %b", a, b, c, s);
        // valores iniciais
           a = 1'b0; b = 1'b0; c = 1'b0;
        // altera durante intervalo de 1s
        #1                     c = 1'b1;
        #1           b = 1'b1; c = 1'b0;
        #1                     c = 1'b1;                              
        #1 a = 1'b1; b = 1'b0; c = 1'b0;
        #1                     c = 1'b1;                              
        #1           b = 1'b1; c = 1'b0;
        #1                     c = 1'b1;                              
    end // main
endmodule // test