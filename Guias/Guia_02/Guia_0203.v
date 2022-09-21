/*
Carolina Morais Nigri - 761400
*/

module Guia_0203;
    // define data
    real x = 0.625; // decimal
    reg [7:0] b = 8'b0 ; // binary
   
    // actions
    initial
    begin : main
        $display ("Guia_0203 - Tests");

        // item a
        $display ("\na)");
        b = 8'b01010100;
        $display ("b = 0.%8b", b);
        $display ("b = 0.%d%d%d%d (4)", b[7:6], b[5:4], b[3:2], b[1:0]);

        // item b
        $display ("\nb)");
        b = 8'b10011100;
        $display ("b = 0.%8b", b);
        $display ("b = 0.%o%o (8)", b[7:5], b[4:2]);

        // item c
        $display ("\nc)");
        b = 8'b10101000;
        $display ("b = 0.%8b", b);
        $display ("b = 0.%x%x (16)", b[7:4], b[3:0]);

        // item d
        $display ("\nd)");
        b = 8'b11000100;
        $display ("b = 1.%8b", b);
        $display ("b = %o.%o%o (8)", 1'b1, b[7:5], b[4:2]);

        // item e
        $display ("\ne)");
        b = 8'b10110000;
        $display ("b = 1101.%8b", b);
        $display ("b = %x.%x%x (16)", 4'b1101, b[7:4], b[3:0]);
    end // main
endmodule // Guia_0203