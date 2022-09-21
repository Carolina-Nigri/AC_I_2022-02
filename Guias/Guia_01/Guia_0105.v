/*
Guia_0105.v
Carolina Morais Nigri - 761400
*/

module Guia_0105;
    // define data
    reg [111:0] b = 0; // binary
    reg [111:0] s = ""; // 3 characters (8 bits)

    // actions
    initial
        begin : main
            $display ("Guia_0105 - Tests");

            // item a 
            $display ("\na)");
            s = "PUC-Minas";
            $display ("s = %s", s);
            b = s;
            $display ("b = %x",b); 

            // item b 
            $display ("\nb)");
            s = "02-2022";
            $display ("s = %s", s);
            b = s;
            $display ("b = %x", b); 

            // item c 
            $display ("\nc)");
            s = "Belo Horizonte";
            $display ("s = %s", s);
            b = s;
            $display ("b = %b", b);

            // item d 
            $display ("\nd)");
            b = 45'o115141156150141;
            $display ("b = %o", b);
            s = "";
            s[8:0] = 9'o115;
            s[17:9] = 9'o141;
            s[26:18] = 9'o156;
            s[35:27] = 9'o150;
            s[44:36] = 9'o141;
            $display ("s = %s%s%s%s%s", s[8:0], s[17:9], s[26:18], s[35:27], s[44:36]);

            // item e 
            $display ("\ne)");
            b = 48'h422e4874652e;
            $display ("b = %x", b);
            s = "";
            s[7:0] = 8'h42;
            s[15:8] = 8'h2e;
            s[23:16] = 8'h48;
            s[31:24] = 8'h74;
            s[39:32] = 8'h65;
            s[48:40] = 8'h2e;
            $display ("s = %s%s%s%s%s%s", s[7:0], s[15:8], s[23:16], s[31:24], s[39:32],s[48:40]);
        end // main
endmodule // Guia_0105