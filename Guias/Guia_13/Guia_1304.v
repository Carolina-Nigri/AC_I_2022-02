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

module dec_as_down ( output[4:0] q, input x, 
                   input clr, input clk, input pr );
    wire[4:0] qnot, preset, and1;

    and AND1 ( and1, q[4], qnot[3], q[2], qnot[1], q[0] );
    or OR1 ( preset, clr, and1 );

    jkff JK1 ( q[4], qnot[4], x, x, clk, preset, pr );
    jkff JK2 ( q[3], qnot[3], x, x, q[4], preset, pr );
    jkff JK3 ( q[2], qnot[2], x, x, q[3], preset, pr );
    jkff JK4 ( q[1], qnot[1], x, x, q[2], preset, pr );
    jkff JK5 ( q[0], qnot[0], x, x, q[1], preset, pr );
endmodule // dec_as_down