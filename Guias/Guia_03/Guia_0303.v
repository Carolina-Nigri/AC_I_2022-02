/*
Guia_0303
Carolina Morais Nigri - 761400
*/

module Guia_0303;
    // define data
    reg signed [6:0] b = 8'b1111_101 ; // binary
    reg signed [5:0] c = 8'b1111_10 ; // binary
    reg signed [4:0] d = 8'b1111_10 ; // binary
 
    // actions
    initial
    begin : main
        $display ("Guia_0303 - Tests");

        // item a
        $display ("\na)");
        d = 5'b10110;
        $display ("C2 = %b",d);
        d = (d-1);
        $display ("C1 = %b -> %b = %d (10)",d,~d,~d);

        // item b
        $display ("\nb)");
        c = 6'b110101;
        $display ("C2 = %b",c);
        c = (c-1);
        $display ("C1 = %b -> %b = %d (10)",c,~c,~c);

        // item c
        $display ("\nc)");
        c = 6'b110011;
        $display ("C2 = %b",c);
        c = (c-1);
        $display ("C1 = %b -> %b (2)",c,~c);

        // item d
        $display ("\nd)");
        b = 7'b1011001;
        $display ("C2 = %b",b);
        b = (b-1);
        $display ("C1 = %b -> %b (2)",b,~b);

        // item e
        $display ("\ne)");
        b = 7'b1011101;
        $display ("C2 = %b",b);
        b = (b-1);
        $display ("C1 = %b -> %b = %h (16)",b,~b,~b);
    end // main end // main
endmodule // Guia_0303