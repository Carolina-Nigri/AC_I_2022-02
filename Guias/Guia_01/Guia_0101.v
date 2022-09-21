/*
Guia_0101.v
Carolina Morais Nigri - 761400
*/

module Guia_0101;
    // define data
    integer x = 0; // decimal
    reg [9:0] b = 0; // binary 
    
    // actions
    initial
        begin : main
            $display ("Guia_0101 - Tests");

            // item a
            $display ("\na)");
            x = 27;
            $display ("x = %d", x);
            b = x;
            $display ("b = %b", b);

            // item b
            $display ("\nb)");
            x = 56;
            $display ("x = %d", x);
            b = x;
            $display ("b = %b", b);

            // item c
            $display ("\nc)");
            x = 721;
            $display ("x = %d", x);
            b = x;
            $display ("b = %b", b);

            // item d
            $display ("\nd)");
            x = 231;
            $display ("x = %d", x);
            b = x;
            $display ("b = %b", b);

            // item e
            $display ("\ne)");
            x = 365;
            $display ("x = %d", x);
            b = x;
            $display ("b = %b", b);
        end // main      
endmodule // Guia_0101