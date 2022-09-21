/*
Guia_0301
Carolina Morais Nigri - 761400
*/

module Guia_0301;
    // define data
    reg [7:0] a = 8'b000_1010 ; // binary
    reg [6:0] b = 8'b000_101 ; // binary
    reg [5:0] c = 8'b001_01 ; // binary
    
    reg [7:0] d = 0 ; // binary
    reg [6:0] e = 0 ; // binary
    reg [5:0] f = 0 ; // binary

    // actions
    initial
    begin : main
        $display ("Guia_0301 - Tests");

        // item a
        $display ("\na)");
        c = 6'b1001;
        $display ("C1,6(%b) = %b",c,~c);
        
        // item b
        $display ("\nb)");
        a = 8'b1100;
        $display ("C1,8(%b) = %b",a,~a);

        // item c
        $display ("\nc)");
        c = 6'b100111;
        $display ("C1,6(%b) = %b",c,~c);
        f = ~c + 1;
        $display ("C2,6(%b) = %b",c,f);

        // item d
        $display ("\nd)");
        b = 7'b101001;
        $display ("C1,7(%b) = %b",b,~b);
        e = ~b + 1;
        $display ("C2,7(%b) = %b",b,e);

        // item e
        $display ("\ne)");
        a = 8'b110001;
        $display ("C1,8(%b) = %b",a,~a);
        d = ~a + 1;
        $display ("C2,8(%b) = %b",a,d);
    end // main
endmodule // Guia_0301