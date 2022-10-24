// Carolina Morais Nigri - 761400

module ff_JK ( output q, 
               input clk, 
               input j, input k );  
  
    reg q;  
  
    always @ ( posedge clk ) // subida do clock
    begin
        case ( {j,k} )  
            2'b00 :  q <= q;  // hold
            2'b01 :  q <= 0;  // reset 
            2'b10 :  q <= 1;  // set 
            2'b11 :  q <= ~q; // toggle
        endcase  
    end
endmodule // ff_JK

module RAM_1x1 ( output out, 
                 input rw, input clk, input address,
                 input in );

    wire and_1, not_in, q;

    and AND1 ( and_1, rw, clk, address );
    not NOT1 ( not_in, in ); 
    
    ff_JK JK ( q, and_1, in, not_in );
    and AND2 ( out, address, q );
endmodule // RAM_1x1

module RAM_1x2 ( output[1:0] out, 
                 input rw, input clk, input address,
                 input[1:0] in );

    wire out_0, out_1, in_0, in_1;

    assign in_0 = in[0];
    assign in_1 = in[1];
    
    RAM_1x1 r1 ( out_0, rw, clk, address, in_0 );
    RAM_1x1 r2 ( out_1, rw, clk, address, in_1 );

    assign out[0] = out_0;
    assign out[1] = out_1;
endmodule // RAM_1x2

module RAM_1x4 ( output[3:0] out, 
                 input rw, input clk, input address,
                 input[3:0] in );

    wire[1:0] out_01, out_23,
              in_01, in_23;

    assign in_01 = in[0:1];
    assign in_23 = in[2:3];
    
    RAM_1x2 r1 ( out_01, rw, clk, address, in_01 );
    RAM_1x2 r2 ( out_23, rw, clk, address, in_23 );
    
    assign out[0:1] = out_01;
    assign out[2:3] = out_23;
endmodule // RAM_1x4