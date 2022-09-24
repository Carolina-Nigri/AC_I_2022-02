// -------------------------
// Exemplo_0802
// Nome: Carolina Morais Nigri
// Matricula: 761400
// -------------------------
// -------------------------
// half subtractor
// -------------------------
module hs ( output s1,
            output s0,
            input x,
            input y );

    // dados locais
    wire not_x;

    // descrever por portas
    xor XOR ( s0, x, y );
    not NOT ( not_x, x );
    and AND ( s1, not_x, y );
endmodule // hs
// -------------------------
// full subtractor
// -------------------------
module fs ( output s1,
            output s0,
            input x,
            input y,
            input carry_in );
   
    // definir dados locais
    wire s01, s11, s21;
    
    // descrever por portas e modulos
    hs HS1 ( s11, s01, x, y );
    hs HS2 ( s21, s0, s01, carry_in );
    or OR ( s1, s11, s21 );
endmodule // fs
module fs2 ( output s1,
             output s01,
             output s00,
             input y1,
             input y0,
             input x1,
             input x0,
             input carry_in );

    // definir dados locais
    wire carry_out;
   
    // descrever por portas e modulos
    fs FS1 ( carry_out, s00, x0, y0, carry_in );
    fs FS2 ( s1, s01, x1, y1, carry_out );
endmodule // fs2
module tests;
// ------------------------- definir dados
    // variaveis
    reg [4:0] x;
    reg [4:0] y;

    wire [3:0] carry; // vem-um
    wire [4:0] subt;

    // modulos de subtratores
    fs2 FS2_1 ( carry[0], subt[1], subt[0], y[1], y[0], x[1], x[0], 1'b0 );
    fs2 FS2_2 ( carry[1], subt[3], subt[2], y[3], y[2], x[3], x[2], carry[0] );
    fs  FS    ( carry[2], subt[4], x[4], y[4], carry[1] );
// ------------------------- parte principal
    initial 
    begin : main
        $display("Exemplo0802 - Carolina Morais Nigri - 761400");
        $display("Test ALU's full subtractor");
        $display("   x    y   c subt");
       
        // projetar testes do subtrator completo
           x = 5'b00000; y = 5'b00000;
        #1 $monitor("%5b %5b %b %5b", x, y, carry[2], subt);
        #1 x = 5'b00000; y = 5'b00001;
        #1 x = 5'b00001; y = 5'b00001;
        #1 x = 5'b00010; y = 5'b00001;
        #1 x = 5'b00100; y = 5'b00100;
        #1 x = 5'b00110; y = 5'b00010;
        #1 x = 5'b00100; y = 5'b01110;
        #1 x = 5'b00110; y = 5'b01010;
        #1 x = 5'b01110; y = 5'b01010;
        #1 x = 5'b01110; y = 5'b01010;
        #1 x = 5'b01010; y = 5'b00010;
        #1 x = 5'b01111; y = 5'b01111;
        #1 x = 5'b10100; y = 5'b01010;
        #1 x = 5'b01010; y = 5'b01110;
        #1 x = 5'b00010; y = 5'b11111;
        #1 x = 5'b11110; y = 5'b11110;
        #1 x = 5'b10010; y = 5'b01010;
        #1 x = 5'b11111; y = 5'b11111;
    end
endmodule // tests