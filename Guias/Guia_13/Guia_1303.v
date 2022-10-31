// Carolina Morais Nigri - 761400

module jkff ( output q, output qnot,
              input j, input k,
              input clk, input preset, input clear );
    
    reg q, qnot;

    always @( posedge clk or preset or clear )
    begin
        if ( clear ) 
        begin 
            q <= 0; qnot <= 1; 
        end
        else
            if ( preset ) 
            begin 
                q <= 1; qnot <= 0; 
            end
        else
            if ( j & ~k ) 
            begin 
                q <= 1; qnot <= 0; 
            end
        else
            if ( ~j & k ) 
            begin 
                q <= 0; qnot <= 1; 
            end
        else
            if ( j & k )
            begin 
                q <= ~q; qnot <= ~qnot; 
            end
    end
endmodule // jkff

module dec_as_up ( output[4:0] q, input x, 
                   input clr, input clk, input pr );
    wire[4:0] qnot, clear, and1;

    and AND1 ( and1, qnot[4], q[3], qnot[2], q[1], qnot[0] );
    or OR1 ( clear, clr, and1 );

    jkff JK1 ( q[4], qnot[4], x, x, clk, pr, clear );
    jkff JK2 ( q[3], qnot[3], x, x, qnot[4], pr, clear );
    jkff JK3 ( q[2], qnot[2], x, x, qnot[3], pr, clear );
    jkff JK4 ( q[1], qnot[1], x, x, qnot[2], pr, clear );
    jkff JK5 ( q[0], qnot[0], x, x, qnot[1], pr, clear );
endmodule // dec_as_up