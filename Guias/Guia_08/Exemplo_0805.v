// -------------------------
// Exemplo_0805
// Nome: Carolina Morais Nigri
// Matricula: 761400
// -------------------------
// -------------------------
// half adder
// -------------------------
module ha ( output s1,
            output s0,
            input x,
            input y );
                   
    // descrever por portas
    xor XOR ( s0, x, y );
    and AND ( s1, x, y );
endmodule // ha
module tests;
// ------------------------- definir dados
    reg [4:0] x;

    wire [4:0] carry; // vai-um
    wire [4:0] nots;
    wire [4:0] c2;

    not NOT1 ( nots[0], x[0] );
    not NOT2 ( nots[1], x[1] );
    not NOT3 ( nots[2], x[2] );
    not NOT4 ( nots[3], x[3] );
    not NOT5 ( nots[4], x[4] );

    ha HA1 ( carry[0], c2[0], nots[0], 1'b1 );
    ha HA2 ( carry[1], c2[1], nots[1], carry[0] );
    ha HA3 ( carry[2], c2[2], nots[2], carry[1] );
    ha HA4 ( carry[3], c2[3], nots[3], carry[2] );
    ha HA5 ( carry[4], c2[4], nots[4], carry[3] );
// ------------------------- parte principal
    initial 
    begin : main
        $display("Exemplo0805 - Carolina Morais Nigri - 761400");
        $display("Test ALU's complement 2");
        $display("  x   c  c2");
       
        // projetar testes do somador completo
           x = 5'b00000;
        #1 $monitor("%5b %b %5b", x, carry[4], c2);
        #1 x = 5'b00001;
        #1 x = 5'b00010;
        #1 x = 5'b00011;
        #1 x = 5'b00100;
        #1 x = 5'b00101;
        #1 x = 5'b00110;
        #1 x = 5'b01010;
        #1 x = 5'b01111;
        #1 x = 5'b10010;
        #1 x = 5'b10110;
        #1 x = 5'b11111;
    end
endmodule // tests