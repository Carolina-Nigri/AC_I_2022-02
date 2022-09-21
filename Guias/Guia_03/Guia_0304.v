/*
Guia_0304
Carolina Morais Nigri - 761400
*/

module Guia_0304;
    // define data
    reg signed [7:0] a = 8'b1111_1010; // binary
    reg signed [6:0] b = 8'b1111_101 ; // binary
    reg signed [5:0] c = 8'b0001_10 ; // binary

    reg signed [7:0] d = 0 ; // binary
    reg signed [6:0] e = 0 ; // binary
    reg signed [5:0] f = 0 ; // binary

    reg signed [7:0] g = 0 ; // binary
    reg signed [8:0] h = 0 ; // binary
    reg signed [8:0] i = 0 ; // binary
    reg signed [12:0] j = 0 ; // binary
    reg signed [12:0] k = 0 ; // binary

    // actions
    initial
    begin : main
        $display ("Guia_0304 - Tests");

        // item a
        $display ("\na)");
        c = 6'b11110;
        f = 6'b1101;
        $display ("%b (2) - %b (2) = %b",c,f, (c-f)); 

        // item b
        $display ("\nb)");
        a = 8'b01011011;
        d = 8'b00100100;
        g = (a-d);
        $display ("%b.%b (2) - %b.%b (2) = %b.%b",a[7:4],a[3:0],d[7:4],d[3:0],g[7:4],g[3:0]);     

        // item c
        $display ("\nc)");
        b = 7'b0101101;
        e = 7'b0011011;
        g = (b-e);
        $display ("231 (4) - 123 (4) = %b (2) - %b (2) = %b (2) = %2d%2d%2d%2d (4)",b,e,g[6:0],g[7:6],g[5:4],g[3:2],g[1:0]); 

        // item d
        $display ("\nd)");
        h = 9'o321;
        i = 9'o123;
        $display ("%o (8) - %o (8) = %b (2) - %b (2) = %b (2) = %o (8)",h,i,h,i,(h-i),(h-i)); 

        // item e
        $display ("\ne)");
        j = 13'h8C1;
        k = 13'hA1F;
        $display ("%h (16) - %h (16) = %b (2) - %b (2) = %b (2) = %h (16)",j,k,j,k,(j-k),(j-k)); 
    end // main
endmodule // Guia_0304