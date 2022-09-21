/*
Guia_0305
Carolina Morais Nigri - 761400
*/

module Guia_0305;
    // define data
    reg signed [7:0] a = 8'b1111_1010; // binary
    reg signed [6:0] b = 8'b1111_101 ; // binary
    reg signed [8:0] c = 8'b0001_10 ; // binary

    reg signed [7:0] d = 0 ; // binary
    reg signed [6:0] e = 0 ; // binary
    reg signed [8:0] f = 0 ; // binary

    reg signed [7:0] g = 0 ; // binary

    // actions
    initial
    begin : main
        $display ("Guia_0305 - Tests");

        // item a
        $display ("\na)");
        b = 7'b0101101;
        e = 7'b0001100;
        $display ("%b (2) - %b (2) = %b (2)",b,e, (b-e)); 
        
        // item b
        $display ("\nb)");
        a = 8'b0101_1101;
        d[6:4] = 3'o2;
        d[3:1] = 3'o5;
        g = (a-d);
        $display ("%b.%b (2) - %o.%o%o (8) = %b.%b (2) - %b.%b%b (2) = %b.%b",a[7:4],a[3:0],d[7:4],d[3:1],d[0:0],a[7:4],a[3:0],d[7:4],d[3:1],d[0:0],g[7:4],g[3:0]);     

        // item c
        $display ("\nc)");
        b = 7'b0110110;
        e = 7'hE;
        $display ("312 (4) - %h (16) = %b (2) - %b (2) = %b (2)",e,b,e,(b-e)); 

        // item d
        $display ("\nd)");
        c = 9'hCB;
        f = 9'b001001001;
        $display ("%h (16) - %b (2) = %b (2) - %b (2) = %b (2)",c,f,c,f,(c-f)); 

        // item e
        $display ("\ne)");
        b = 39;
        e = 7'h2A;
        $display ("%d (10) - %h (16) = %b (2) - %b (2) = %b (2)",b,e,b,e,(b-e)); 
    end // main
endmodule // Guia_0305