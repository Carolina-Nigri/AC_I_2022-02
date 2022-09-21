/*
Carolina Morais Nigri - 761400
*/

module Guia_0205;
    // define data
    reg [7:0] a = 8'b0; // binary
    reg [7:0] b = 8'b0; // binary
    reg [8:0] c;
    
    // actions
    initial
    begin : main
        $display ("Guia_0205 - Tests");

        // item a
        $display ("\na)");
        a = 8'b101010;
        b = 8'b11101;
        $display ("a = %b.%b", a[7:3], a[2:0]);
        $display ("b = %b.%b", b[7:3], b[2:0]);
        c = a+b;
        $display ("c = a+b = %b.%b", c[8:3], c[2:0]);

        // item b
        $display ("\nb)");
        a = 8'b1001011;
        b = 8'b10010;
        $display ("a = %b.%b", a[7:3], a[2:0]);
        $display ("b = %b.%b", b[7:3], b[2:0]);
        c = a-b;
        $display ("c = a-b = %b.%b", c[8:3], c[2:0]);

        // item c
        $display ("\nc)");
        a = 8'b100001;
        b = 8'b1101;
        $display ("a = %b.%b", a[7:3], a[2:0]);
        $display ("b = %b.%b", b[7:2], b[1:0]);
        c = a*b;
        $display ("c = a*b = %b.%b", c[8:5], c[4:0]);

        // item d
        $display ("\nd)");
        a = 8'b10110110;
        b = 8'b10101;
        $display ("a = %b.%b", a[7:3], a[2:0]);
        $display ("b = %b.%b", b[7:3], b[2:0]);
        c = a/b;
        $display ("c = a/b = %b", c);

        // item e
        $display ("\ne)");
        a = 8'b1101001;
        b = 8'b1011;
        $display ("a = %b", a);
        $display ("b = %b", b);
        c = a%b;
        $display ("c = a%%b = %b", c);
    end // main
endmodule // Guia_0205