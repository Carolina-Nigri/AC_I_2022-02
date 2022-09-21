/*
Guia_0103.v
Carolina Morais Nigri - 761400
*/

module Guia_0103;
    // define data
    integer x = 0; // decimal
    reg [11:0] b = 0; // binary

    // actions
    initial
        begin : main
            $display ("Guia_0103 - Tests");

            // item a
            $display ("\na)");
            x = 77;
            $display ("x = %d", x);
            b = x;
            $display ("b = %d%d%d%d", b[7:6], b[5:4], b[3:2], b[1:0]);

            // item b
            $display ("\nb)");
            x = 49;
            $display ("x = %d", x);
            b = x;
            $display ("b = %o", b);

            // item c
            $display ("\nc)");
            x = 68;
            $display ("x = %d", x);
            b = x;
            $display ("b = %x", b);

            // item d
            $display ("\nd)");
            x = 175;
            $display ("x = %d", x);
            b = x;
            $display ("b = %x", b);

            // item e
            $display ("\ne)");
            x = 781;
            $display ("x = %d", x);
            b = x;
            $display ("b = %x", b);
        end // main
endmodule // Guia_0103