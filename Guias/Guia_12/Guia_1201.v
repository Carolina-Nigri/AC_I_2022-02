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

module RAM_1x4 ( output[3:0] out, 
                 input rw, input clk, input address,
                 input[3:0] in );

    wire out_0, out_1, out_2, out_3,
         q0, q1, q2, q3
         in_0, in_1, in_2, in_3,
         not_in_0, not_in_1, not_in_2, not_in_3,
         and_1;

    assign in_0 = in[0];
    assign in_1 = in[1];
    assign in_2 = in[2];
    assign in_3 = in[3];
    assign not_in_0 = ~in[0];
    assign not_in_1 = ~in[1];
    assign not_in_2 = ~in[2];
    assign not_in_3 = ~in[3];
    
    and AND1 ( and_1, rw, clk, address );
    ff_JK JK1 ( q0, and_1, in_0, not_in_0 );
    ff_JK JK2 ( q1, and_1, in_1, not_in_1 );
    ff_JK JK3 ( q2, and_1, in_2, not_in_2 );
    ff_JK JK4 ( q3, and_1, in_3, not_in_3 );
    
    and AND2 ( out_0, address, q0 );
    and AND3 ( out_1, address, q1 );
    and AND4 ( out_2, address, q2 );
    and AND5 ( out_3, address, q3 );
    
    assign out[0] = out_0;
    assign out[1] = out_1;
    assign out[2] = out_2;
    assign out[3] = out_3;
endmodule // RAM_1x4