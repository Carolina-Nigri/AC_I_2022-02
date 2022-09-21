/*
Guia_0302
Carolina Morais Nigri - 761400
*/

module Guia_0302;
    // define data
    reg [7:0] a = 8'h0a ; // hexadecimal
    reg [6:0] b = 8'o15 ; // octal
    reg [5:0] c = 0 ; // decimal

    reg [7:0] d = 0 ; // binary
    reg [6:0] e = 0 ; // binary
    reg [5:0] f = 0 ; // binary

    // actions
    initial
    begin : main
        $display ("Guia_0302 - Tests");

        // item a
        $display ("\na)");
        c = 6'b011011;
        $display ("C1,6( %3d(4) ) = %b",123,~c);

        // item b
        $display ("\nb)");
        a = 8'h5E;
        $display ("C1,8( %h(16) ) = %b",a,~a);

        // item c
        $display ("\nc)");
        c = 6'b101101;
        $display ("C1,6( %3d(4) ) = %b",231,~c);
        f = ~c + 1;
        $display ("C2,6( %3d(4) ) = %b",c,f);

        // item d
        $display ("\nd)");
        b = 9'o517;
        $display ("C1,7( %o(8) ) = %b",b,~b);
        e = ~b + 1;
        $display ("C2,7( %o(8) ) = %b",b,e);

        // item e
        $display ("\ne)");
        a = 8'hD3;
        $display ("C1,8( %h(16) ) = %b",a,~a);
        d = ~a + 1;
        $display ("C2,8( %h(16) ) = %b",a,d);
    end // main
endmodule // Guia_0302