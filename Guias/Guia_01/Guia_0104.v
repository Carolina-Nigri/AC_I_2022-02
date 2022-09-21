/*
Guia_0104.v
Carolina Morais Nigri - 761400
*/

module Guia_0104;
    // define data
    reg [7:0] b = 0; // binary

    // actions
    initial
        begin : main
            $display ("Guia_0104 - Tests");

            // item a
            $display ("\na)");
            b = 8'b00010010;
            $display ("b = [%2b][%2b][%2b][%2b]", b[7:6], b[5:4], b[3:2], b[1:0]);
            $display ("b = %d%d%d%d", b[7:6], b[5:4], b[3:2], b[1:0]);

            // item b
            $display ("\nb)");
            b = 8'b00011001;
            $display ("b = [%3b][%3b][%3b]", b[7:6], b[5:3], b[2:0]);
            $display ("b = %o", b);
            
            // item c
            $display ("\nc)");
            b = 8'b00101101;
            $display ("b = [%4b][%4b]", b[7:4], b[3:0]);
            $display ("b = %x", b);

            // item d
            b = 8'b00101110;
            $display ("\nd)");
            $display ("b = [%3b][%3b][%3b]", b[7:6], b[5:3], b[2:0]);
            $display ("b = %o", b);

            // item e
            $display ("\ne)");
            b = 8'b00110101;
            $display ("b = [%2b][%2b][%2b][%2b]", b[7:6], b[5:4], b[3:2], b[1:0]);
            $display ("b = %d%d%d%d", b[7:6], b[5:4], b[3:2], b[1:0]);
        end // main
endmodule // Guia_0104