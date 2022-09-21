/*
Carolina Morais Nigri - 761400
*/

module Guia_0204;
    // define data
    real x = 0.0; // decimal
    reg [11:0] b = 8'b0 ; // binary
    integer q [5:0];
    
    // actions
    initial
    begin : main
        $display ("Guia_0204 - Tests");

        // item a
        $display ("\na)");
        q[5] = 3;
        q[4] = 1;
        q[3] = 2;
        $display ("q = 0.%1d%1d%1d (4)", q[5], q[4], q[3]);
        b[7:6] = q[5];
        b[5:4] = q[4];
        b[3:2] = q[3];
        $display ("b = 0.%2b%2b%2b (2)", b[7:6],b[5:4],b[3:2]);

        // item b
        $display ("\nb)");
        b = 12'h3d9;
        $display ("b = 0.%x (16)", b);
        q[5] = b[11:10];
        q[4] = b[9:8];
        q[3] = b[7:6];
        q[2] = b[5:4];
        q[1] = b[3:2];
        q[0] = b[1:0];
        $display ("b = 0.%1d%1d%1d%1d%1d%1d (4)", q[5],q[4],q[3],q[2],q[1],q[0]);
    
        // item c
        $display ("\nc)");
        b = 12'o7540;
        $display ("b = 0.%o (8)", b);
        $display ("b = 0.%b (2)", b);

        // item d
        $display ("\nd)");
        b = 12'o3100;
        $display ("b = %o.%o (8)",3'o7, b);
        q[5] = b[11:10];
        q[4] = b[9:8];
        q[3] = b[7:6];
        b = 3'o7;
        $display ("b = %d%d.%1d%1d%1d (4)", b[0:0], b[2:1],q[5],q[4],q[3]);

        // item e
        $display ("\ne)");
        b = 12'hb83;
        $display ("b = %1x.%x (16)", 4'ha, b);
        q[5] = b[11:10];
        q[4] = b[9:8];
        q[3] = b[7:6];
        q[2] = b[5:4];
        q[1] = b[3:2];
        q[0] = b[1:0];
        b = 4'ha;
        $display ("b = %d%d.%1d%1d%1d%1d%1d%1d (4)", b[1:0], b[3:2],q[5],q[4],q[3],q[2],q[1],q[0]);
    end // main
endmodule // Guia_0204