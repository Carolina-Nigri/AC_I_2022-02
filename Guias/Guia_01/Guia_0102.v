/*
Guia_0102.v
Carolina Morais Nigri - 761400
*/

module Guia_0102;
    // define data
    integer x = 0; // decimal
    reg [7:0] b = 8'b0; // binary (bits)

    // actions
    initial
        begin : main
            $display ("Guia_0102 - Tests");

            // item a
            $display ("\na)");
            b = 8'b10111;
            $display ("b = %b", b);
            x = b;
            $display ("x = %d", x);

            // item b
            $display ("\nb)");
            b = 8'b11100;
            $display ("b = %b", b);
            x = b;
            $display ("x = %d", x);

            // item c
            $display ("\nc)");
            b = 8'b101100;
            $display ("b = %b", b);
            x = b;
            $display ("x = %d", x);

            // item d
            $display ("\nd)");
            b = 8'b110101;
            $display ("b = %b", b);
            x = b;
            $display ("x = %d", x);

            // item e
            $display ("\ne)");
            b = 8'b111001;
            $display ("b = %b", b);
            x = b;
            $display ("x = %d", x);
        end // main
endmodule // Guia_0102