// -------------------------
// Exemplo_0804
// Nome: Carolina Morais Nigri
// Matricula: 761400
// -------------------------
// -------------------------
// equals
// -------------------------
module eq ( output s,
            input x,
            input y );

    // descrever por portas
    xnor XNOR ( s, x, y );
endmodule // eq
module tests;
// ------------------------- definir dados
    // variaveis
    reg [4:0] x;
    reg [4:0] y;

    wire [5:0] s;

    eq EQ1 ( s[0], x[0], y[0] );
    eq EQ2 ( s[1], x[1], y[1] );
    eq EQ3 ( s[2], x[2], y[2] );
    eq EQ4 ( s[3], x[3], y[3] );
    eq EQ5 ( s[4], x[4], y[4] );

    nand NAND (s[5], s[0], s[1], s[2], s[3], s[4] );
// ------------------------- parte principal
    initial 
    begin : main
        $display("Exemplo0804 - Carolina Morais Nigri - 761400");
        $display("Test ALU's not equals");
        $display("   x    y   s");
       
        // projetar testes do subtrator completo
           x = 5'b00000; y = 5'b00000;
        #1 $monitor("%5b %5b %b", x, y, s[5]);
        #1 x = 5'b00000; y = 5'b00001;
        #1 x = 5'b00001; y = 5'b00001;
        #1 x = 5'b00010; y = 5'b00001;
        #1 x = 5'b00100; y = 5'b00100;
        #1 x = 5'b00110; y = 5'b00010;
        #1 x = 5'b00100; y = 5'b01110;
        #1 x = 5'b00110; y = 5'b01010;
        #1 x = 5'b01110; y = 5'b01010;
        #1 x = 5'b01110; y = 5'b01010;
        #1 x = 5'b01010; y = 5'b01010;
        #1 x = 5'b01111; y = 5'b01111;
        #1 x = 5'b10100; y = 5'b01010;
        #1 x = 5'b01010; y = 5'b01110;
        #1 x = 5'b00010; y = 5'b11111;
        #1 x = 5'b11110; y = 5'b11110;
        #1 x = 5'b10010; y = 5'b01010;
        #1 x = 5'b11111; y = 5'b11111;
    end
endmodule // tests